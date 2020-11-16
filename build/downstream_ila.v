module BSG_DOWNSTREAM_ch(
__ILA_BSG_DOWNSTREAM_ch_grant__,
clk,
core_clk,
core_ready,
io_data_in,
io_valid_in,
rst,
__ILA_BSG_DOWNSTREAM_ch_acc_decode__,
__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__,
__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__,
__ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__,
__ILA_BSG_DOWNSTREAM_ch_valid__,
buffer_data_n61,
buffer_data_n65,
buffer_addr0,
buffer_data0,
buffer_wen0,
buffer_addr_n60,
buffer_addr_n64,
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
input      [2:0] __ILA_BSG_DOWNSTREAM_ch_grant__;
input            clk;
input            core_clk;
input            core_ready;
input      [7:0] io_data_in;
input            io_valid_in;
input            rst;
input     [15:0] buffer_data_n61;
input     [15:0] buffer_data_n65;
output      [2:0] __ILA_BSG_DOWNSTREAM_ch_acc_decode__;
output            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__;
output            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__;
output            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__;
output            __ILA_BSG_DOWNSTREAM_ch_valid__;
output      [5:0] buffer_addr0;
output     [15:0] buffer_data0;
output            buffer_wen0;
output      [5:0] buffer_addr_n60;
output      [5:0] buffer_addr_n64;
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
wire      [2:0] __ILA_BSG_DOWNSTREAM_ch_acc_decode__;
wire            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__;
wire            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__;
wire            __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__;
wire      [2:0] __ILA_BSG_DOWNSTREAM_ch_grant__;
wire            __ILA_BSG_DOWNSTREAM_ch_valid__;
wire      [5:0] buffer_addr0;
wire      [5:0] buffer_addr_n60;
wire      [5:0] buffer_addr_n64;
wire     [15:0] buffer_data0;
wire     [15:0] buffer_data_n61;
wire     [15:0] buffer_data_n65;
wire            buffer_wen0;
wire            bv_1_0_n4;
wire            bv_1_1_n0;
wire      [6:0] bv_7_1_n25;
wire            clk;
wire            core_clk;
wire            core_ready;
wire      [7:0] io_data_in;
wire            io_valid_in;
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
wire      [6:0] n26;
wire            n27;
wire            n28;
wire            n29;
wire            n3;
wire            n30;
wire            n31;
wire            n32;
wire            n33;
wire            n34;
wire      [5:0] n35;
wire     [15:0] n36;
wire      [6:0] n37;
wire      [6:0] n38;
wire            n39;
wire      [6:0] n40;
wire      [6:0] n41;
wire            n42;
wire      [6:0] n43;
wire            n44;
wire            n45;
wire            n46;
wire            n47;
wire            n48;
wire            n49;
wire            n5;
wire      [5:0] n50;
wire      [5:0] n51;
wire            n52;
wire            n53;
wire            n54;
wire            n55;
wire            n56;
wire            n57;
wire      [7:0] n58;
wire      [5:0] n59;
wire            n6;
wire     [15:0] n62;
wire      [5:0] n63;
wire     [15:0] n66;
wire            n7;
wire            n8;
wire            n9;
wire            rst;
assign __ILA_BSG_DOWNSTREAM_ch_valid__ = 1'b1 ;
assign bv_1_1_n0 = 1'h1 ;
assign n1 =  ( io_valid_in ) == ( bv_1_1_n0 )  ;
assign n2 =  ( io_valid ) == ( bv_1_1_n0 )  ;
assign n3 =  ( n1 ) | ( n2 )  ;
assign bv_1_0_n4 = 1'h0 ;
assign n5 =  ( full ) == ( bv_1_0_n4 )  ;
assign n6 =  ( n3 ) & (n5 )  ;
assign __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__ = n6 ;
assign __ILA_BSG_DOWNSTREAM_ch_acc_decode__[0] = __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__ ;
assign n7 =  ( core_ready ) == ( bv_1_1_n0 )  ;
assign n8 =  ( wptr_t ) == ( rptr )  ;
assign n9 = ~ ( n8 )  ;
assign n10 =  ( n7 ) & (n9 )  ;
assign n11 = rptr[0:0] ;
assign n12 =  ( n11 ) == ( bv_1_0_n4 )  ;
assign n13 =  ( n10 ) & (n12 )  ;
assign n14 =  ( core_clk ) == ( bv_1_0_n4 )  ;
assign n15 =  ( n13 ) & (n14 )  ;
assign __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__ = n15 ;
assign __ILA_BSG_DOWNSTREAM_ch_acc_decode__[1] = __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__ ;
assign n16 =  ( core_ready ) == ( bv_1_1_n0 )  ;
assign n17 =  ( wptr_t ) == ( rptr )  ;
assign n18 = ~ ( n17 )  ;
assign n19 =  ( n16 ) & (n18 )  ;
assign n20 = rptr[0:0] ;
assign n21 =  ( n20 ) == ( bv_1_1_n0 )  ;
assign n22 =  ( n19 ) & (n21 )  ;
assign n23 =  ( core_clk ) == ( bv_1_0_n4 )  ;
assign n24 =  ( n22 ) & (n23 )  ;
assign __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__ = n24 ;
assign __ILA_BSG_DOWNSTREAM_ch_acc_decode__[2] = __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__ ;
assign bv_7_1_n25 = 7'h1 ;
assign n26 =  ( rptr ) + ( bv_7_1_n25 )  ;
assign n27 = n26[3:3] ;
assign n28 = ~ ( n6 )  ;
assign n29 =  ( 1'b1 ) & (n28 )  ;
assign n30 =  ( 1'b1 ) & (n6 )  ;
assign n31 =  ( io_valid ) == ( bv_1_1_n0 )  ;
assign n32 = ~ ( n31 )  ;
assign n33 =  ( n30 ) & (n32 )  ;
assign n34 =  ( n30 ) & (n31 )  ;
assign n35 = wptr[5:0] ;
assign n36 =  { ( io_data_in ) , ( io_data ) }  ;
assign buffer_addr0 = n34 ? (n35) : (0) ;
assign buffer_data0 = n34 ? (n36) : ('d0) ;
assign buffer_wen0 = (n34) ? ( 1'b1 ) : (1'b0) ;
assign n37 =  ( rptr ) + ( bv_7_1_n25 )  ;
assign n38 =  ( rptr ) + ( bv_7_1_n25 )  ;
assign n39 =  ( io_valid ) == ( bv_1_1_n0 )  ;
assign n40 =  ( wptr ) + ( bv_7_1_n25 )  ;
assign n41 =  ( n39 ) ? ( n40 ) : ( wptr ) ;
assign n42 =  ( io_valid ) == ( bv_1_1_n0 )  ;
assign n43 =  ( n42 ) ? ( n40 ) : ( wptr ) ;
assign n44 =  ( io_valid ) == ( bv_1_1_n0 )  ;
assign n45 = n40[6:6] ;
assign n46 = rptr[6:6] ;
assign n47 =  ( n45 ) == ( n46 )  ;
assign n48 = ~ ( n47 )  ;
assign n49 =  ( n44 ) & (n48 )  ;
assign n50 = wptr[5:0] ;
assign n51 = rptr[5:0] ;
assign n52 =  ( n50 ) == ( n51 )  ;
assign n53 =  ( n49 ) & (n52 )  ;
assign n54 =  ( n53 ) ? ( bv_1_1_n0 ) : ( bv_1_0_n4 ) ;
assign n55 =  ( io_valid ) == ( bv_1_1_n0 )  ;
assign n56 =  ( n55 ) ? ( bv_1_0_n4 ) : ( io_valid_in ) ;
assign n57 =  ( io_valid ) == ( bv_1_0_n4 )  ;
assign n58 =  ( n57 ) ? ( io_data_in ) : ( io_data ) ;
assign n59 = rptr[5:0] ;
assign buffer_addr_n60 = n59 ;
assign n62 = buffer_data_n61 ;
assign n63 = rptr[5:0] ;
assign buffer_addr_n64 = n63 ;
assign n66 = buffer_data_n65 ;
always @(posedge clk) begin
   if(rst) begin
   end
   else if(__ILA_BSG_DOWNSTREAM_ch_valid__) begin
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__ && __ILA_BSG_DOWNSTREAM_ch_grant__[2] ) begin
           io_token_out <= n27;
       end
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__ && __ILA_BSG_DOWNSTREAM_ch_grant__[1] ) begin
           rptr <= n37;
       end else if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__ && __ILA_BSG_DOWNSTREAM_ch_grant__[2] ) begin
           rptr <= n38;
       end
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__ && __ILA_BSG_DOWNSTREAM_ch_grant__[0] ) begin
           wptr <= n41;
       end
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__ && __ILA_BSG_DOWNSTREAM_ch_grant__[0] ) begin
           wptr_t <= n43;
       end
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__ && __ILA_BSG_DOWNSTREAM_ch_grant__[0] ) begin
           full <= n54;
       end else if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__ && __ILA_BSG_DOWNSTREAM_ch_grant__[1] ) begin
           full <= bv_1_0_n4;
       end else if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__ && __ILA_BSG_DOWNSTREAM_ch_grant__[2] ) begin
           full <= bv_1_0_n4;
       end
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__ && __ILA_BSG_DOWNSTREAM_ch_grant__[0] ) begin
           io_valid <= n56;
       end
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_IN__ && __ILA_BSG_DOWNSTREAM_ch_grant__[0] ) begin
           io_data <= n58;
       end
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT0__ && __ILA_BSG_DOWNSTREAM_ch_grant__[1] ) begin
           core_data0 <= n62;
       end
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__ && __ILA_BSG_DOWNSTREAM_ch_grant__[2] ) begin
           core_data1 <= n66;
       end
       if ( __ILA_BSG_DOWNSTREAM_ch_decode_of_DOWN_DATA_OUT1__ && __ILA_BSG_DOWNSTREAM_ch_grant__[2] ) begin
           child_valid <= bv_1_1_n0;
       end
   end
end
endmodule
