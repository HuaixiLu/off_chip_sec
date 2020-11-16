module BSG_UPSTREAM(
__ILA_BSG_UPSTREAM_grant__,
clk,
core_clk,
core_data_in,
core_valid_in,
io_token,
rst,
__ILA_BSG_UPSTREAM_acc_decode__,
__ILA_BSG_UPSTREAM_decode_of_DATA_IN__,
__ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__,
__ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__,
__ILA_BSG_UPSTREAM_valid__,
io_valid_out,
data_cycle_0,
data_cycle_1,
child_valid,
sent_cnt,
finish_cnt,
io_data_out_ch0,
io_data_out_ch1
);
input      [2:0] __ILA_BSG_UPSTREAM_grant__;
input            clk;
input            core_clk;
input     [63:0] core_data_in;
input            core_valid_in;
input            io_token;
input            rst;
output      [2:0] __ILA_BSG_UPSTREAM_acc_decode__;
output            __ILA_BSG_UPSTREAM_decode_of_DATA_IN__;
output            __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__;
output            __ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__;
output            __ILA_BSG_UPSTREAM_valid__;
output reg            io_valid_out;
output reg     [31:0] data_cycle_0;
output reg     [31:0] data_cycle_1;
output reg            child_valid;
output reg      [6:0] sent_cnt;
output reg      [6:0] finish_cnt;
output reg      [7:0] io_data_out_ch0;
output reg      [7:0] io_data_out_ch1;
wire      [2:0] __ILA_BSG_UPSTREAM_acc_decode__;
wire            __ILA_BSG_UPSTREAM_decode_of_DATA_IN__;
wire            __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__;
wire            __ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__;
wire      [2:0] __ILA_BSG_UPSTREAM_grant__;
wire            __ILA_BSG_UPSTREAM_valid__;
wire            bv_1_0_n2;
wire            bv_1_1_n0;
wire      [6:0] bv_7_8_n25;
wire            clk;
wire            core_clk;
wire     [63:0] core_data_in;
wire            core_valid_in;
wire            io_token;
wire            n1;
wire            n10;
wire            n11;
wire            n12;
wire            n13;
wire            n14;
wire            n15;
wire            n16;
wire            n17;
wire            n18;
wire            n19;
wire            n20;
wire     [31:0] n21;
wire     [31:0] n22;
wire     [31:0] n23;
wire     [31:0] n24;
wire      [6:0] n26;
wire      [6:0] n27;
wire            n3;
wire            n4;
wire            n5;
wire            n6;
wire            n7;
wire            n8;
wire            n9;
wire            rst;
assign __ILA_BSG_UPSTREAM_valid__ = 1'b1 ;
assign bv_1_1_n0 = 1'h1 ;
assign n1 =  ( io_token ) == ( bv_1_1_n0 )  ;
assign bv_1_0_n2 = 1'h0 ;
assign n3 =  ( core_valid_in ) == ( bv_1_0_n2 )  ;
assign n4 =  ( n1 ) & (n3 )  ;
assign n5 =  ( core_clk ) == ( bv_1_0_n2 )  ;
assign n6 =  ( n4 ) & (n5 )  ;
assign __ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__ = n6 ;
assign __ILA_BSG_UPSTREAM_acc_decode__[0] = __ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__ ;
assign n7 =  ( io_token ) == ( bv_1_1_n0 )  ;
assign n8 =  ( core_valid_in ) == ( bv_1_1_n0 )  ;
assign n9 =  ( core_clk ) == ( bv_1_0_n2 )  ;
assign n10 =  ( n8 ) & (n9 )  ;
assign n11 =  ( child_valid ) == ( bv_1_0_n2 )  ;
assign n12 =  ( n10 ) & (n11 )  ;
assign n13 =  ( n7 ) & (n12 )  ;
assign __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__ = n13 ;
assign __ILA_BSG_UPSTREAM_acc_decode__[1] = __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__ ;
assign n14 =  ( io_token ) == ( bv_1_0_n2 )  ;
assign n15 =  ( core_valid_in ) == ( bv_1_1_n0 )  ;
assign n16 =  ( core_clk ) == ( bv_1_0_n2 )  ;
assign n17 =  ( n15 ) & (n16 )  ;
assign n18 =  ( child_valid ) == ( bv_1_0_n2 )  ;
assign n19 =  ( n17 ) & (n18 )  ;
assign n20 =  ( n14 ) & (n19 )  ;
assign __ILA_BSG_UPSTREAM_decode_of_DATA_IN__ = n20 ;
assign __ILA_BSG_UPSTREAM_acc_decode__[2] = __ILA_BSG_UPSTREAM_decode_of_DATA_IN__ ;
assign n21 = core_data_in[31:0] ;
assign n22 = core_data_in[31:0] ;
assign n23 = core_data_in[63:32] ;
assign n24 = core_data_in[63:32] ;
assign bv_7_8_n25 = 7'h8 ;
assign n26 =  ( finish_cnt ) + ( bv_7_8_n25 )  ;
assign n27 =  ( finish_cnt ) + ( bv_7_8_n25 )  ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_BSG_UPSTREAM_valid__) begin
       if ( __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__ && __ILA_BSG_UPSTREAM_grant__[1] ) begin
           data_cycle_0 <= n21;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_DATA_IN__ && __ILA_BSG_UPSTREAM_grant__[2] ) begin
           data_cycle_0 <= n22;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__ && __ILA_BSG_UPSTREAM_grant__[1] ) begin
           data_cycle_1 <= n23;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_DATA_IN__ && __ILA_BSG_UPSTREAM_grant__[2] ) begin
           data_cycle_1 <= n24;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__ && __ILA_BSG_UPSTREAM_grant__[1] ) begin
           child_valid <= bv_1_1_n0;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_DATA_IN__ && __ILA_BSG_UPSTREAM_grant__[2] ) begin
           child_valid <= bv_1_1_n0;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__ && __ILA_BSG_UPSTREAM_grant__[0] ) begin
           finish_cnt <= n26;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__ && __ILA_BSG_UPSTREAM_grant__[1] ) begin
           finish_cnt <= n27;
       end
   end
end
endmodule
