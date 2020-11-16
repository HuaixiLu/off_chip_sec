module spec {
    input clk,
    input rst,
    input [63:0] data_in,
    input valid_in,
    input ready,
    output [63:0] data_out,
    output valid_out
}

reg [3:0] state;
localparam IDLE == 4'd1;
localparam Pro  == 4'd2;
localparam Out0 == 4'd3;
localparam Out1 == 4'd4;
localparam Out2 == 4'd5;
localparam Out3 == 4'd6;
localparam STOR == 4'd7;

//up
reg [6:0] up_cnt;
reg [63:0] temp_data;
reg [15:0] data0;
reg [15:0] data1;
reg [15:0] data2;
reg [15:0] data3;

// down
reg [6:0]  down_rptr;
reg [6:0]  down_wptr;
reg [31:0] down_wdata;
reg        down_wen;
wire [31:0] down_data_o;
reg [31:0] down_data_out0;
reg [31:0] down_data_out1;

always @(posedge clk) begin
    if(rst) begin
        state <= IDLE;
        up_cnt <= 0;
        down_rptr <= 0;
        down_wptr <= 0;
        down_wen <= 0;
    end
    else begin
        case(state)
            IDLE: if(valid_in && up_cnt < 8) begin
                state <= Out0;
                temp_data <= data_in;
            end
            if(token) up_cnt <= up_cnt - 4;
            Out0: begin 
                data0 <= {temp_data[39:32], temp[7:0]};
                state <= Out1;
                if(token) up_cnt <= up_cnt - 4;
            end
            Out1: begin
                data1 <= {temp_data[47:40], temp[15:8]};
                state <= Out2;
                down_wen <= 1;
                if(token) up_cnt <= up_cnt - 3;
                else up_cnt <= up_cnt + 1;
            end
            Out2: begin
                // Store data0 & data1
                data2 <= {temp_data[55:48], temp[23:16]};
                down_wptr <= down_wptr + 1;
                down_wdata <= {{data1[15:8],data0[15:8]}, {data1[7:0], data0[7:0]}};
                state <= Out3;
                down_wen <= 0;
                if(token) up_cnt <= up_cnt - 4;
            end
            Out3: begin
                data3 <= {temp_data[63:56], temp[31:24]};
                state <= STOR;
                down_wen <= 1;
                if(token) up_cnt <= up_cnt - 3;
                else up_cnt <= up_cnt + 1;
                
            end
            STOR: begin
                down_wptr <= down_wptr + 1;
                down_wdata <= {{data3{15:8],data2[15:8]}, {data3[7:0], data2[7:0]}};
                down_wen <= 0;
                if(token) up_cnt <= up_cnt - 4; 
                state <= IDLE;
            end
    end
end

reg valid_temp;
always @(posedge clk) begin

    if (ready && valid_out)
        valid_out <= 0;
    else if (valid_temp) begin
        data_out <= {{down_data_out1[31:16],down_data_out0[31:16]},{down_data_out1[15:0],down_data_out0[15:0]}};
        valid_out <= 1;
    end

    if (ready & down_wptr != down_rptr & down_rptr[0] == 0) begin
        down_data_out0 <= down_data_o;
        down_rptr <= down_rptr + 1;
    end
    else if (ready & down_wptr != down_rptr & down_rptr[0] == 1) begin
        down_data_out1 <= down_data_o;
        down_rptr <= down_rptr + 1;
        valid_temp <= 1;
    end
end

reg down_rptr_token;

always @(posedge clk) begin
    if (rst) down_rptr_token <= 0;
    else down_rptr_token <= down_rptr[2];
end

wire token;
assign token = (down_rptr_token ^ down_rptr[2]);

Memory mem(
    .clk(clk),
    .rst(rst),
    .r_addr(down_rptr),
    .w_addr(down_wptr),
    .w_data(down_wdata),
    .w_en(down_wen),
    .r_data(down_data_o)
    );

endmodule


module Memory
#(
	parameter N_ELEMENTS = 8,
	parameter ADDR_WIDTH = 4,
	parameter DATA_WIDTH = 32
)(
	// Inputs
	input                   clk,    // Clock
	input                   rst,    // Reset (All entries -> 0)
	input  [ADDR_WIDTH-1:0] r_addr, // Read Addresss
	input  [ADDR_WIDTH-1:0] w_addr, // Write Address
	input  [DATA_WIDTH-1:0] w_data, // Write Data
	input                   w_en,   // Write Enable

	// Outputs
	output [DATA_WIDTH-1:0] r_data  // Read Data
);

	// Memory Unit
	reg [DATA_WIDTH-1:0] mem[N_ELEMENTS:0];

	// Continuous Read
	assign r_data = mem[r_addr];

	// Synchronous Reset + Write
	genvar i;
	generate
		for (i = 0; i < N_ELEMENTS; i = i + 1) begin : wport
			always @(posedge clk) begin
				if (rst) begin
					mem[i] <= 0;
				end
				else if (w_en && w_addr == i) begin
					mem[i] <= w_data;
				end
			end
		end
	endgenerate

endmodule