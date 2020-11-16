module BSG_UPSTREAM_OUT(
__ILA_BSG_UPSTREAM_OUT_grant__,
clk,
core_clk,
core_data_in,
core_valid_in,
io_token,
rst,
__ILA_BSG_UPSTREAM_OUT_acc_decode__,
__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__,
__ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__,
__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__,
__ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__,
__ILA_BSG_UPSTREAM_OUT_valid__,
io_valid_out,
data_cycle_0,
data_cycle_1,
child_valid,
sent_cnt,
finish_cnt,
io_data_out_ch0,
io_data_out_ch1,
counter,
commit,
data_temp
);
input      [3:0] __ILA_BSG_UPSTREAM_OUT_grant__;
input            clk;
input            core_clk;
input     [63:0] core_data_in;
input            core_valid_in;
input            io_token;
input            rst;
output      [3:0] __ILA_BSG_UPSTREAM_OUT_acc_decode__;
output            __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__;
output            __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__;
output            __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__;
output            __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__;
output            __ILA_BSG_UPSTREAM_OUT_valid__;
output reg            io_valid_out;
output reg     [31:0] data_cycle_0;
output reg     [31:0] data_cycle_1;
output reg            child_valid;
output reg      [6:0] sent_cnt;
output reg      [6:0] finish_cnt;
output reg      [7:0] io_data_out_ch0;
output reg      [7:0] io_data_out_ch1;
output reg            counter;
output reg            commit;
output reg     [63:0] data_temp;
wire      [3:0] __ILA_BSG_UPSTREAM_OUT_acc_decode__;
wire            __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__;
wire            __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__;
wire            __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__;
wire            __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__;
wire      [3:0] __ILA_BSG_UPSTREAM_OUT_grant__;
wire            __ILA_BSG_UPSTREAM_OUT_valid__;
wire            bv_1_0_n3;
wire            bv_1_1_n0;
wire      [6:0] bv_7_1_n32;
wire      [6:0] bv_7_64_n6;
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
wire            n2;
wire            n20;
wire            n21;
wire            n22;
wire            n23;
wire            n24;
wire            n25;
wire            n26;
wire            n27;
wire            n28;
wire            n29;
wire            n30;
wire            n31;
wire      [6:0] n33;
wire      [6:0] n34;
wire      [7:0] n35;
wire      [7:0] n36;
wire      [7:0] n37;
wire      [7:0] n38;
wire      [7:0] n39;
wire            n4;
wire      [7:0] n40;
wire      [7:0] n41;
wire      [7:0] n42;
wire      [6:0] n5;
wire            n7;
wire            n8;
wire            n9;
wire            rst;
assign bv_1_1_n0 = 1'h1 ;
assign n1 =  ( child_valid ) == ( bv_1_1_n0 )  ;
assign __ILA_BSG_UPSTREAM_OUT_valid__ = n1 ;
assign n2 = sent_cnt[0:0] ;
assign bv_1_0_n3 = 1'h0 ;
assign n4 =  ( n2 ) == ( bv_1_0_n3 )  ;
assign n5 =  ( sent_cnt ) - ( finish_cnt )  ;
assign bv_7_64_n6 = 7'h40 ;
assign n7 =  ( n5 ) < ( bv_7_64_n6 )  ;
assign n8 =  ( n4 ) & (n7 )  ;
assign n9 =  ( child_valid ) == ( bv_1_1_n0 )  ;
assign n10 =  ( n8 ) & (n9 )  ;
assign n11 =  ( counter ) == ( bv_1_0_n3 )  ;
assign n12 =  ( n10 ) & (n11 )  ;
assign __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__ = n12 ;
assign __ILA_BSG_UPSTREAM_OUT_acc_decode__[0] = __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__ ;
assign n13 = sent_cnt[0:0] ;
assign n14 =  ( n13 ) == ( bv_1_1_n0 )  ;
assign n15 =  ( commit ) == ( bv_1_1_n0 )  ;
assign n16 =  ( n14 ) & (n15 )  ;
assign n17 =  ( counter ) == ( bv_1_1_n0 )  ;
assign n18 =  ( n16 ) & (n17 )  ;
assign __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__ = n18 ;
assign __ILA_BSG_UPSTREAM_OUT_acc_decode__[1] = __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__ ;
assign n19 = sent_cnt[0:0] ;
assign n20 =  ( n19 ) == ( bv_1_1_n0 )  ;
assign n21 =  ( n20 ) & (n7 )  ;
assign n22 =  ( child_valid ) == ( bv_1_1_n0 )  ;
assign n23 =  ( n21 ) & (n22 )  ;
assign n24 =  ( counter ) == ( bv_1_0_n3 )  ;
assign n25 =  ( n23 ) & (n24 )  ;
assign __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__ = n25 ;
assign __ILA_BSG_UPSTREAM_OUT_acc_decode__[2] = __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__ ;
assign n26 = sent_cnt[0:0] ;
assign n27 =  ( n26 ) == ( bv_1_0_n3 )  ;
assign n28 =  ( commit ) == ( bv_1_1_n0 )  ;
assign n29 =  ( n27 ) & (n28 )  ;
assign n30 =  ( counter ) == ( bv_1_1_n0 )  ;
assign n31 =  ( n29 ) & (n30 )  ;
assign __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__ = n31 ;
assign __ILA_BSG_UPSTREAM_OUT_acc_decode__[3] = __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__ ;
assign bv_7_1_n32 = 7'h1 ;
assign n33 =  ( sent_cnt ) + ( bv_7_1_n32 )  ;
assign n34 =  ( sent_cnt ) + ( bv_7_1_n32 )  ;
assign n35 = data_cycle_0[7:0] ;
assign n36 = data_temp[15:8] ;
assign n37 = data_cycle_1[7:0] ;
assign n38 = data_temp[15:8] ;
assign n39 = data_cycle_0[23:16] ;
assign n40 = data_temp[31:24] ;
assign n41 = data_cycle_1[23:16] ;
assign n42 = data_temp[31:24] ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_BSG_UPSTREAM_OUT_valid__) begin
       if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__ && __ILA_BSG_UPSTREAM_OUT_grant__[0] ) begin
           io_valid_out <= bv_1_1_n0;
       end else if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__ && __ILA_BSG_UPSTREAM_OUT_grant__[1] ) begin
           io_valid_out <= bv_1_0_n3;
       end else if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__ && __ILA_BSG_UPSTREAM_OUT_grant__[2] ) begin
           io_valid_out <= bv_1_1_n0;
       end else if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__ && __ILA_BSG_UPSTREAM_OUT_grant__[3] ) begin
           io_valid_out <= bv_1_0_n3;
       end
       if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__ && __ILA_BSG_UPSTREAM_OUT_grant__[3] ) begin
           child_valid <= bv_1_0_n3;
       end
       if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__ && __ILA_BSG_UPSTREAM_OUT_grant__[0] ) begin
           sent_cnt <= n33;
       end else if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__ && __ILA_BSG_UPSTREAM_OUT_grant__[2] ) begin
           sent_cnt <= n34;
       end
       if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__ && __ILA_BSG_UPSTREAM_OUT_grant__[0] ) begin
           io_data_out_ch0 <= n35;
       end else if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__ && __ILA_BSG_UPSTREAM_OUT_grant__[1] ) begin
           io_data_out_ch0 <= n36;
       end else if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__ && __ILA_BSG_UPSTREAM_OUT_grant__[2] ) begin
           io_data_out_ch0 <= n37;
       end else if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__ && __ILA_BSG_UPSTREAM_OUT_grant__[3] ) begin
           io_data_out_ch0 <= n38;
       end
       if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__ && __ILA_BSG_UPSTREAM_OUT_grant__[0] ) begin
           io_data_out_ch1 <= n39;
       end else if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__ && __ILA_BSG_UPSTREAM_OUT_grant__[1] ) begin
           io_data_out_ch1 <= n40;
       end else if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__ && __ILA_BSG_UPSTREAM_OUT_grant__[2] ) begin
           io_data_out_ch1 <= n41;
       end else if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__ && __ILA_BSG_UPSTREAM_OUT_grant__[3] ) begin
           io_data_out_ch1 <= n42;
       end
       if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__ && __ILA_BSG_UPSTREAM_OUT_grant__[0] ) begin
           counter <= bv_1_1_n0;
       end else if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_n__ && __ILA_BSG_UPSTREAM_OUT_grant__[1] ) begin
           counter <= bv_1_0_n3;
       end else if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__ && __ILA_BSG_UPSTREAM_OUT_grant__[2] ) begin
           counter <= bv_1_1_n0;
       end else if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_n__ && __ILA_BSG_UPSTREAM_OUT_grant__[3] ) begin
           counter <= bv_1_0_n3;
       end
       if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__ && __ILA_BSG_UPSTREAM_OUT_grant__[0] ) begin
           commit <= bv_1_1_n0;
       end else if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__ && __ILA_BSG_UPSTREAM_OUT_grant__[2] ) begin
           commit <= bv_1_1_n0;
       end
       if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output0_p__ && __ILA_BSG_UPSTREAM_OUT_grant__[0] ) begin
           data_temp <= data_cycle_0;
       end else if ( __ILA_BSG_UPSTREAM_OUT_decode_of_Output1_p__ && __ILA_BSG_UPSTREAM_OUT_grant__[2] ) begin
           data_temp <= data_cycle_1;
       end
   end
end
endmodule
