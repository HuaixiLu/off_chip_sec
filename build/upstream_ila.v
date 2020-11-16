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
__ILA_BSG_UPSTREAM_decode_of_Output0_n__,
__ILA_BSG_UPSTREAM_decode_of_Output0_p__,
__ILA_BSG_UPSTREAM_decode_of_Output1_n__,
__ILA_BSG_UPSTREAM_decode_of_Output1_p__,
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
io_data_out_ch1,
data_temp,
commit,
counter
);
input      [6:0] __ILA_BSG_UPSTREAM_grant__;
input            clk;
input            core_clk;
input     [63:0] core_data_in;
input            core_valid_in;
input            io_token;
input            rst;
output      [6:0] __ILA_BSG_UPSTREAM_acc_decode__;
output            __ILA_BSG_UPSTREAM_decode_of_DATA_IN__;
output            __ILA_BSG_UPSTREAM_decode_of_Output0_n__;
output            __ILA_BSG_UPSTREAM_decode_of_Output0_p__;
output            __ILA_BSG_UPSTREAM_decode_of_Output1_n__;
output            __ILA_BSG_UPSTREAM_decode_of_Output1_p__;
output            __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__;
output            __ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__;
output            __ILA_BSG_UPSTREAM_valid__;
output reg            io_valid_out;
output reg     [31:0] data_cycle_0;
output reg     [31:0] data_cycle_1;
output reg            child_valid;
output reg      [3:0] sent_cnt;
output reg      [3:0] finish_cnt;
output reg      [7:0] io_data_out_ch0;
output reg      [7:0] io_data_out_ch1;
output reg     [63:0] data_temp;
output reg            commit;
output reg            counter;
wire      [6:0] __ILA_BSG_UPSTREAM_acc_decode__;
wire            __ILA_BSG_UPSTREAM_decode_of_DATA_IN__;
wire            __ILA_BSG_UPSTREAM_decode_of_Output0_n__;
wire            __ILA_BSG_UPSTREAM_decode_of_Output0_p__;
wire            __ILA_BSG_UPSTREAM_decode_of_Output1_n__;
wire            __ILA_BSG_UPSTREAM_decode_of_Output1_p__;
wire            __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__;
wire            __ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__;
wire      [6:0] __ILA_BSG_UPSTREAM_grant__;
wire            __ILA_BSG_UPSTREAM_valid__;
wire            bv_1_0_n2;
wire            bv_1_1_n0;
wire      [3:0] bv_4_1_n56;
wire      [3:0] bv_4_8_n24;
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
wire            n21;
wire            n22;
wire      [3:0] n23;
wire            n25;
wire            n26;
wire            n27;
wire            n28;
wire            n29;
wire            n3;
wire            n30;
wire            n31;
wire            n32;
wire            n33;
wire            n34;
wire            n35;
wire            n36;
wire            n37;
wire            n38;
wire      [3:0] n39;
wire            n4;
wire            n40;
wire            n41;
wire            n42;
wire            n43;
wire            n44;
wire            n45;
wire            n46;
wire            n47;
wire            n48;
wire            n49;
wire            n5;
wire            n50;
wire            n51;
wire     [31:0] n52;
wire     [31:0] n53;
wire     [31:0] n54;
wire     [31:0] n55;
wire      [3:0] n57;
wire      [3:0] n58;
wire      [3:0] n59;
wire            n6;
wire      [3:0] n60;
wire      [7:0] n61;
wire      [7:0] n62;
wire      [7:0] n63;
wire      [7:0] n64;
wire      [7:0] n65;
wire      [7:0] n66;
wire      [7:0] n67;
wire      [7:0] n68;
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
assign n21 = sent_cnt[0:0] ;
assign n22 =  ( n21 ) == ( bv_1_0_n2 )  ;
assign n23 =  ( sent_cnt ) - ( finish_cnt )  ;
assign bv_4_8_n24 = 4'h8 ;
assign n25 =  ( n23 ) < ( bv_4_8_n24 )  ;
assign n26 =  ( n22 ) & (n25 )  ;
assign n27 =  ( child_valid ) == ( bv_1_1_n0 )  ;
assign n28 =  ( n26 ) & (n27 )  ;
assign n29 =  ( counter ) == ( bv_1_0_n2 )  ;
assign n30 =  ( n28 ) & (n29 )  ;
assign __ILA_BSG_UPSTREAM_decode_of_Output0_p__ = n30 ;
assign __ILA_BSG_UPSTREAM_acc_decode__[3] = __ILA_BSG_UPSTREAM_decode_of_Output0_p__ ;
assign n31 = sent_cnt[0:0] ;
assign n32 =  ( n31 ) == ( bv_1_1_n0 )  ;
assign n33 =  ( commit ) == ( bv_1_1_n0 )  ;
assign n34 =  ( n32 ) & (n33 )  ;
assign n35 =  ( counter ) == ( bv_1_1_n0 )  ;
assign n36 =  ( n34 ) & (n35 )  ;
assign __ILA_BSG_UPSTREAM_decode_of_Output0_n__ = n36 ;
assign __ILA_BSG_UPSTREAM_acc_decode__[4] = __ILA_BSG_UPSTREAM_decode_of_Output0_n__ ;
assign n37 = sent_cnt[0:0] ;
assign n38 =  ( n37 ) == ( bv_1_1_n0 )  ;
assign n39 =  ( sent_cnt ) - ( finish_cnt )  ;
assign n40 =  ( n39 ) < ( bv_4_8_n24 )  ;
assign n41 =  ( n38 ) & (n40 )  ;
assign n42 =  ( child_valid ) == ( bv_1_1_n0 )  ;
assign n43 =  ( n41 ) & (n42 )  ;
assign n44 =  ( counter ) == ( bv_1_0_n2 )  ;
assign n45 =  ( n43 ) & (n44 )  ;
assign __ILA_BSG_UPSTREAM_decode_of_Output1_p__ = n45 ;
assign __ILA_BSG_UPSTREAM_acc_decode__[5] = __ILA_BSG_UPSTREAM_decode_of_Output1_p__ ;
assign n46 = sent_cnt[0:0] ;
assign n47 =  ( n46 ) == ( bv_1_0_n2 )  ;
assign n48 =  ( commit ) == ( bv_1_1_n0 )  ;
assign n49 =  ( n47 ) & (n48 )  ;
assign n50 =  ( counter ) == ( bv_1_1_n0 )  ;
assign n51 =  ( n49 ) & (n50 )  ;
assign __ILA_BSG_UPSTREAM_decode_of_Output1_n__ = n51 ;
assign __ILA_BSG_UPSTREAM_acc_decode__[6] = __ILA_BSG_UPSTREAM_decode_of_Output1_n__ ;
assign n52 = core_data_in[31:0] ;
assign n53 = core_data_in[31:0] ;
assign n54 = core_data_in[63:32] ;
assign n55 = core_data_in[63:32] ;
assign bv_4_1_n56 = 4'h1 ;
assign n57 =  ( sent_cnt ) + ( bv_4_1_n56 )  ;
assign n58 =  ( sent_cnt ) + ( bv_4_1_n56 )  ;
assign n59 =  ( finish_cnt ) + ( bv_4_8_n24 )  ;
assign n60 =  ( finish_cnt ) + ( bv_4_8_n24 )  ;
assign n61 = data_cycle_0[7:0] ;
assign n62 = data_temp[15:8] ;
assign n63 = data_cycle_1[7:0] ;
assign n64 = data_temp[15:8] ;
assign n65 = data_cycle_0[23:16] ;
assign n66 = data_temp[31:24] ;
assign n67 = data_cycle_1[23:16] ;
assign n68 = data_temp[31:24] ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_BSG_UPSTREAM_valid__) begin
       if ( __ILA_BSG_UPSTREAM_decode_of_Output0_p__ && __ILA_BSG_UPSTREAM_grant__[3] ) begin
           io_valid_out <= bv_1_1_n0;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output0_n__ && __ILA_BSG_UPSTREAM_grant__[4] ) begin
           io_valid_out <= bv_1_0_n2;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_p__ && __ILA_BSG_UPSTREAM_grant__[5] ) begin
           io_valid_out <= bv_1_1_n0;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_n__ && __ILA_BSG_UPSTREAM_grant__[6] ) begin
           io_valid_out <= bv_1_0_n2;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__ && __ILA_BSG_UPSTREAM_grant__[1] ) begin
           data_cycle_0 <= n52;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_DATA_IN__ && __ILA_BSG_UPSTREAM_grant__[2] ) begin
           data_cycle_0 <= n53;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__ && __ILA_BSG_UPSTREAM_grant__[1] ) begin
           data_cycle_1 <= n54;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_DATA_IN__ && __ILA_BSG_UPSTREAM_grant__[2] ) begin
           data_cycle_1 <= n55;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__ && __ILA_BSG_UPSTREAM_grant__[1] ) begin
           child_valid <= bv_1_1_n0;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_DATA_IN__ && __ILA_BSG_UPSTREAM_grant__[2] ) begin
           child_valid <= bv_1_1_n0;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_n__ && __ILA_BSG_UPSTREAM_grant__[6] ) begin
           child_valid <= bv_1_0_n2;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_Output0_p__ && __ILA_BSG_UPSTREAM_grant__[3] ) begin
           sent_cnt <= n57;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_p__ && __ILA_BSG_UPSTREAM_grant__[5] ) begin
           sent_cnt <= n58;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_TOKEN_IN__ && __ILA_BSG_UPSTREAM_grant__[0] ) begin
           finish_cnt <= n59;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_TOKEN_AND_DATA__ && __ILA_BSG_UPSTREAM_grant__[1] ) begin
           finish_cnt <= n60;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_Output0_p__ && __ILA_BSG_UPSTREAM_grant__[3] ) begin
           io_data_out_ch0 <= n61;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output0_n__ && __ILA_BSG_UPSTREAM_grant__[4] ) begin
           io_data_out_ch0 <= n62;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_p__ && __ILA_BSG_UPSTREAM_grant__[5] ) begin
           io_data_out_ch0 <= n63;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_n__ && __ILA_BSG_UPSTREAM_grant__[6] ) begin
           io_data_out_ch0 <= n64;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_Output0_p__ && __ILA_BSG_UPSTREAM_grant__[3] ) begin
           io_data_out_ch1 <= n65;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output0_n__ && __ILA_BSG_UPSTREAM_grant__[4] ) begin
           io_data_out_ch1 <= n66;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_p__ && __ILA_BSG_UPSTREAM_grant__[5] ) begin
           io_data_out_ch1 <= n67;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_n__ && __ILA_BSG_UPSTREAM_grant__[6] ) begin
           io_data_out_ch1 <= n68;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_Output0_p__ && __ILA_BSG_UPSTREAM_grant__[3] ) begin
           data_temp <= data_cycle_0;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_p__ && __ILA_BSG_UPSTREAM_grant__[5] ) begin
           data_temp <= data_cycle_1;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_Output0_p__ && __ILA_BSG_UPSTREAM_grant__[3] ) begin
           commit <= bv_1_1_n0;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_p__ && __ILA_BSG_UPSTREAM_grant__[5] ) begin
           commit <= bv_1_1_n0;
       end
       if ( __ILA_BSG_UPSTREAM_decode_of_Output0_p__ && __ILA_BSG_UPSTREAM_grant__[3] ) begin
           counter <= bv_1_1_n0;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output0_n__ && __ILA_BSG_UPSTREAM_grant__[4] ) begin
           counter <= bv_1_0_n2;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_p__ && __ILA_BSG_UPSTREAM_grant__[5] ) begin
           counter <= bv_1_1_n0;
       end else if ( __ILA_BSG_UPSTREAM_decode_of_Output1_n__ && __ILA_BSG_UPSTREAM_grant__[6] ) begin
           counter <= bv_1_0_n2;
       end
   end
end
endmodule
