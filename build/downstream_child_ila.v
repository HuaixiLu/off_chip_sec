module BSG_DOWNSTREAM_OUT(
__ILA_BSG_DOWNSTREAM_OUT_grant__,
clk,
core_clk,
core_ready,
io_data_in,
io_valid_in,
rst,
__ILA_BSG_DOWNSTREAM_OUT_acc_decode__,
__ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__,
__ILA_BSG_DOWNSTREAM_OUT_valid__,
core_data_out,
core_valid_out,
io_token_out,
rptr,
wptr,
wptr_t,
full,
io_valid,
io_data,
core_data0,
core_data1,
child_valid
);
input            __ILA_BSG_DOWNSTREAM_OUT_grant__;
input            clk;
input            core_clk;
input            core_ready;
input      [7:0] io_data_in;
input            io_valid_in;
input            rst;
output            __ILA_BSG_DOWNSTREAM_OUT_acc_decode__;
output            __ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__;
output            __ILA_BSG_DOWNSTREAM_OUT_valid__;
output reg     [31:0] core_data_out;
output reg            core_valid_out;
output reg            io_token_out;
output reg      [6:0] rptr;
output reg      [6:0] wptr;
output reg      [6:0] wptr_t;
output reg            full;
output reg            io_valid;
output reg      [7:0] io_data;
output reg     [15:0] core_data0;
output reg     [15:0] core_data1;
output reg            child_valid;
wire            __ILA_BSG_DOWNSTREAM_OUT_acc_decode__;
wire            __ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__;
wire            __ILA_BSG_DOWNSTREAM_OUT_grant__;
wire            __ILA_BSG_DOWNSTREAM_OUT_valid__;
wire            bv_1_0_n6;
wire            bv_1_1_n0;
wire            clk;
wire            core_clk;
wire            core_ready;
wire      [7:0] io_data_in;
wire            io_valid_in;
wire            n1;
wire            n2;
wire            n3;
wire            n4;
wire     [31:0] n5;
wire            rst;
assign bv_1_1_n0 = 1'h1 ;
assign n1 =  ( child_valid ) == ( bv_1_1_n0 )  ;
assign __ILA_BSG_DOWNSTREAM_OUT_valid__ = n1 ;
assign n2 =  ( child_valid ) == ( bv_1_1_n0 )  ;
assign n3 =  ( core_clk ) == ( bv_1_1_n0 )  ;
assign n4 =  ( n2 ) & (n3 )  ;
assign __ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__ = n4 ;
assign __ILA_BSG_DOWNSTREAM_OUT_acc_decode__[0] = __ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__ ;
assign n5 =  { ( core_data1 ) , ( core_data0 ) }  ;
assign bv_1_0_n6 = 1'h0 ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_BSG_DOWNSTREAM_OUT_valid__) begin
       if ( __ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__ && __ILA_BSG_DOWNSTREAM_OUT_grant__[0] ) begin
           core_data_out <= n5;
       end
       if ( __ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__ && __ILA_BSG_DOWNSTREAM_OUT_grant__[0] ) begin
           core_valid_out <= bv_1_1_n0;
       end
       if ( __ILA_BSG_DOWNSTREAM_OUT_decode_of_DOWN_OUTPUT_FINAL__ && __ILA_BSG_DOWNSTREAM_OUT_grant__[0] ) begin
           child_valid <= bv_1_0_n6;
       end
   end
end
endmodule
