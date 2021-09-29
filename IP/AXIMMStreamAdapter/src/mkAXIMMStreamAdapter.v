//
// Generated by Bluespec Compiler, version 2021.07 (build 4cac6eb)
//
// On Mon Sep 27 16:22:00 CEST 2021
//
//
// Ports:
// Name                         I/O  size props
// S_AXI_arready                  O     1
// S_AXI_rvalid                   O     1
// S_AXI_rdata                    O    32
// S_AXI_rresp                    O     2
// S_AXI_awready                  O     1
// S_AXI_wready                   O     1
// S_AXI_bvalid                   O     1
// S_AXI_bresp                    O     2
// S_AXIS_tready                  O     1
// M_AXIS_tvalid                  O     1
// M_AXIS_tdata                   O    32
// M_AXIS_tlast                   O     1
// M_AXIS_tkeep                   O     4
// M_AXIS_tDest                   O     4
// CLK                            I     1 clock
// RST_N                          I     1 reset
// S_AXI_arvalid                  I     1
// S_AXI_araddr                   I    16 reg
// S_AXI_arprot                   I     3 reg
// S_AXI_rready                   I     1
// S_AXI_awvalid                  I     1
// S_AXI_awaddr                   I    16
// S_AXI_awprot                   I     3
// S_AXI_wvalid                   I     1
// S_AXI_wdata                    I    32
// S_AXI_wstrb                    I     4
// S_AXI_bready                   I     1
// S_AXIS_tvalid                  I     1
// S_AXIS_tdata                   I    32 reg
// S_AXIS_tkeep                   I     4 reg
// S_AXIS_tDest                   I     4 reg
// S_AXIS_tlast                   I     1 reg
// M_AXIS_tready                  I     1
//
// No combinational paths from inputs to outputs
//
//

`ifdef BSV_ASSIGNMENT_DELAY
`else
  `define BSV_ASSIGNMENT_DELAY
`endif

`ifdef BSV_POSITIVE_RESET
  `define BSV_RESET_VALUE 1'b1
  `define BSV_RESET_EDGE posedge
`else
  `define BSV_RESET_VALUE 1'b0
  `define BSV_RESET_EDGE negedge
`endif

module mkAXIMMStreamAdapter(CLK,
			    RST_N,

			    S_AXI_arready,

			    S_AXI_arvalid,

			    S_AXI_araddr,

			    S_AXI_arprot,

			    S_AXI_rvalid,

			    S_AXI_rready,

			    S_AXI_rdata,

			    S_AXI_rresp,

			    S_AXI_awready,

			    S_AXI_awvalid,

			    S_AXI_awaddr,

			    S_AXI_awprot,

			    S_AXI_wready,

			    S_AXI_wvalid,

			    S_AXI_wdata,

			    S_AXI_wstrb,

			    S_AXI_bvalid,

			    S_AXI_bready,

			    S_AXI_bresp,

			    S_AXIS_tready,

			    S_AXIS_tvalid,

			    S_AXIS_tdata,

			    S_AXIS_tkeep,

			    S_AXIS_tDest,

			    S_AXIS_tlast,

			    M_AXIS_tvalid,

			    M_AXIS_tready,

			    M_AXIS_tdata,

			    M_AXIS_tlast,

			    M_AXIS_tkeep,

			    M_AXIS_tDest);
  input  CLK;
  input  RST_N;

  // value method s_rd_arready
  output S_AXI_arready;

  // action method s_rd_parvalid
  input  S_AXI_arvalid;

  // action method s_rd_paraddr
  input  [15 : 0] S_AXI_araddr;

  // action method s_rd_parprot
  input  [2 : 0] S_AXI_arprot;

  // value method s_rd_rvalid
  output S_AXI_rvalid;

  // action method s_rd_prready
  input  S_AXI_rready;

  // value method s_rd_rdata
  output [31 : 0] S_AXI_rdata;

  // value method s_rd_rresp
  output [1 : 0] S_AXI_rresp;

  // value method s_wr_awready
  output S_AXI_awready;

  // action method s_wr_pawvalid
  input  S_AXI_awvalid;

  // action method s_wr_pawaddr
  input  [15 : 0] S_AXI_awaddr;

  // action method s_wr_pawprot
  input  [2 : 0] S_AXI_awprot;

  // value method s_wr_wready
  output S_AXI_wready;

  // action method s_wr_pwvalid
  input  S_AXI_wvalid;

  // action method s_wr_pwdata
  input  [31 : 0] S_AXI_wdata;

  // action method s_wr_pwstrb
  input  [3 : 0] S_AXI_wstrb;

  // value method s_wr_bvalid
  output S_AXI_bvalid;

  // action method s_wr_pbready
  input  S_AXI_bready;

  // value method s_wr_bresp
  output [1 : 0] S_AXI_bresp;

  // value method axis_rd_tready
  output S_AXIS_tready;

  // action method axis_rd_ptvalid
  input  S_AXIS_tvalid;

  // action method axis_rd_ptdata
  input  [31 : 0] S_AXIS_tdata;

  // action method axis_rd_ptuser

  // action method axis_rd_ptkeep
  input  [3 : 0] S_AXIS_tkeep;

  // action method axis_rd_ptDest
  input  [3 : 0] S_AXIS_tDest;

  // action method axis_rd_ptlast
  input  S_AXIS_tlast;

  // value method axis_wr_tvalid
  output M_AXIS_tvalid;

  // action method axis_wr_ptready
  input  M_AXIS_tready;

  // value method axis_wr_tdata
  output [31 : 0] M_AXIS_tdata;

  // value method axis_wr_tlast
  output M_AXIS_tlast;

  // value method axis_wr_tuser

  // value method axis_wr_tkeep
  output [3 : 0] M_AXIS_tkeep;

  // value method axis_wr_tDest
  output [3 : 0] M_AXIS_tDest;

  // signals for module outputs
  wire [31 : 0] M_AXIS_tdata, S_AXI_rdata;
  wire [3 : 0] M_AXIS_tDest, M_AXIS_tkeep;
  wire [1 : 0] S_AXI_bresp, S_AXI_rresp;
  wire M_AXIS_tlast,
       M_AXIS_tvalid,
       S_AXIS_tready,
       S_AXI_arready,
       S_AXI_awready,
       S_AXI_bvalid,
       S_AXI_rvalid,
       S_AXI_wready;

  // inlined wires
  wire [36 : 0] saxi_wr_dataIn_rv$port0__write_1,
		saxi_wr_dataIn_rv$port1__read,
		saxi_wr_dataIn_rv$port2__read;
  wire [19 : 0] saxi_wr_addrIn_rv$port0__write_1,
		saxi_wr_addrIn_rv$port1__read,
		saxi_wr_addrIn_rv$port2__read;
  wire saxi_wr_addrIn_rv$EN_port0__write,
       saxi_wr_addrIn_rv$EN_port1__write,
       saxi_wr_dataIn_rv$EN_port0__write,
       saxi_wr_dataIn_rv$EN_port1__write;

  // register rd_stream_isRst_isInReset
  reg rd_stream_isRst_isInReset;
  wire rd_stream_isRst_isInReset$D_IN, rd_stream_isRst_isInReset$EN;

  // register saxi_rd_isRst_isInReset
  reg saxi_rd_isRst_isInReset;
  wire saxi_rd_isRst_isInReset$D_IN, saxi_rd_isRst_isInReset$EN;

  // register saxi_wr_addrIn_rv
  reg [19 : 0] saxi_wr_addrIn_rv;
  wire [19 : 0] saxi_wr_addrIn_rv$D_IN;
  wire saxi_wr_addrIn_rv$EN;

  // register saxi_wr_dataIn_rv
  reg [36 : 0] saxi_wr_dataIn_rv;
  wire [36 : 0] saxi_wr_dataIn_rv$D_IN;
  wire saxi_wr_dataIn_rv$EN;

  // register saxi_wr_isRst_isInReset
  reg saxi_wr_isRst_isInReset;
  wire saxi_wr_isRst_isInReset$D_IN, saxi_wr_isRst_isInReset$EN;

  // register wr_stream_isRst_isInReset
  reg wr_stream_isRst_isInReset;
  wire wr_stream_isRst_isInReset$D_IN, wr_stream_isRst_isInReset$EN;

  // ports of submodule rd_stream_in
  wire [40 : 0] rd_stream_in$D_IN, rd_stream_in$D_OUT;
  wire rd_stream_in$CLR,
       rd_stream_in$DEQ,
       rd_stream_in$EMPTY_N,
       rd_stream_in$ENQ,
       rd_stream_in$FULL_N;

  // ports of submodule saxi_rd_in
  wire [18 : 0] saxi_rd_in$D_IN;
  wire saxi_rd_in$CLR,
       saxi_rd_in$DEQ,
       saxi_rd_in$EMPTY_N,
       saxi_rd_in$ENQ,
       saxi_rd_in$FULL_N;

  // ports of submodule saxi_rd_out
  wire [33 : 0] saxi_rd_out$D_IN, saxi_rd_out$D_OUT;
  wire saxi_rd_out$CLR,
       saxi_rd_out$DEQ,
       saxi_rd_out$EMPTY_N,
       saxi_rd_out$ENQ,
       saxi_rd_out$FULL_N;

  // ports of submodule saxi_wr_in
  wire [54 : 0] saxi_wr_in$D_IN, saxi_wr_in$D_OUT;
  wire saxi_wr_in$CLR,
       saxi_wr_in$DEQ,
       saxi_wr_in$EMPTY_N,
       saxi_wr_in$ENQ,
       saxi_wr_in$FULL_N;

  // ports of submodule saxi_wr_out
  wire [1 : 0] saxi_wr_out$D_IN, saxi_wr_out$D_OUT;
  wire saxi_wr_out$CLR,
       saxi_wr_out$DEQ,
       saxi_wr_out$EMPTY_N,
       saxi_wr_out$ENQ,
       saxi_wr_out$FULL_N;

  // ports of submodule wr_stream_out
  wire [40 : 0] wr_stream_out$D_IN, wr_stream_out$D_OUT;
  wire wr_stream_out$CLR,
       wr_stream_out$DEQ,
       wr_stream_out$EMPTY_N,
       wr_stream_out$ENQ,
       wr_stream_out$FULL_N;

  // value method s_rd_arready
  assign S_AXI_arready = !saxi_rd_isRst_isInReset && saxi_rd_in$FULL_N ;

  // value method s_rd_rvalid
  assign S_AXI_rvalid = !saxi_rd_isRst_isInReset && saxi_rd_out$EMPTY_N ;

  // value method s_rd_rdata
  assign S_AXI_rdata = saxi_rd_out$EMPTY_N ? saxi_rd_out$D_OUT[33:2] : 32'd0 ;

  // value method s_rd_rresp
  assign S_AXI_rresp = saxi_rd_out$EMPTY_N ? saxi_rd_out$D_OUT[1:0] : 2'd0 ;

  // value method s_wr_awready
  assign S_AXI_awready = !saxi_wr_isRst_isInReset && !saxi_wr_addrIn_rv[19] ;

  // value method s_wr_wready
  assign S_AXI_wready = !saxi_wr_isRst_isInReset && !saxi_wr_dataIn_rv[36] ;

  // value method s_wr_bvalid
  assign S_AXI_bvalid = !saxi_wr_isRst_isInReset && saxi_wr_out$EMPTY_N ;

  // value method s_wr_bresp
  assign S_AXI_bresp = saxi_wr_out$EMPTY_N ? saxi_wr_out$D_OUT : 2'd0 ;

  // value method axis_rd_tready
  assign S_AXIS_tready = !rd_stream_isRst_isInReset && rd_stream_in$FULL_N ;

  // value method axis_wr_tvalid
  assign M_AXIS_tvalid = !wr_stream_isRst_isInReset && wr_stream_out$EMPTY_N ;

  // value method axis_wr_tdata
  assign M_AXIS_tdata =
	     wr_stream_out$EMPTY_N ? wr_stream_out$D_OUT[40:9] : 32'd0 ;

  // value method axis_wr_tlast
  assign M_AXIS_tlast = wr_stream_out$EMPTY_N && wr_stream_out$D_OUT[0] ;

  // value method axis_wr_tkeep
  assign M_AXIS_tkeep =
	     wr_stream_out$EMPTY_N ? wr_stream_out$D_OUT[8:5] : 4'd0 ;

  // value method axis_wr_tDest
  assign M_AXIS_tDest =
	     wr_stream_out$EMPTY_N ? wr_stream_out$D_OUT[4:1] : 4'd0 ;

  // submodule rd_stream_in
  SizedFIFO #(.p1width(32'd41),
	      .p2depth(32'd16),
	      .p3cntr_width(32'd4),
	      .guarded(1'd1)) rd_stream_in(.RST(RST_N),
					   .CLK(CLK),
					   .D_IN(rd_stream_in$D_IN),
					   .ENQ(rd_stream_in$ENQ),
					   .DEQ(rd_stream_in$DEQ),
					   .CLR(rd_stream_in$CLR),
					   .D_OUT(rd_stream_in$D_OUT),
					   .FULL_N(rd_stream_in$FULL_N),
					   .EMPTY_N(rd_stream_in$EMPTY_N));

  // submodule saxi_rd_in
  SizedFIFO #(.p1width(32'd19),
	      .p2depth(32'd4),
	      .p3cntr_width(32'd2),
	      .guarded(1'd1)) saxi_rd_in(.RST(RST_N),
					 .CLK(CLK),
					 .D_IN(saxi_rd_in$D_IN),
					 .ENQ(saxi_rd_in$ENQ),
					 .DEQ(saxi_rd_in$DEQ),
					 .CLR(saxi_rd_in$CLR),
					 .D_OUT(),
					 .FULL_N(saxi_rd_in$FULL_N),
					 .EMPTY_N(saxi_rd_in$EMPTY_N));

  // submodule saxi_rd_out
  SizedFIFO #(.p1width(32'd34),
	      .p2depth(32'd4),
	      .p3cntr_width(32'd2),
	      .guarded(1'd1)) saxi_rd_out(.RST(RST_N),
					  .CLK(CLK),
					  .D_IN(saxi_rd_out$D_IN),
					  .ENQ(saxi_rd_out$ENQ),
					  .DEQ(saxi_rd_out$DEQ),
					  .CLR(saxi_rd_out$CLR),
					  .D_OUT(saxi_rd_out$D_OUT),
					  .FULL_N(saxi_rd_out$FULL_N),
					  .EMPTY_N(saxi_rd_out$EMPTY_N));

  // submodule saxi_wr_in
  SizedFIFO #(.p1width(32'd55),
	      .p2depth(32'd4),
	      .p3cntr_width(32'd2),
	      .guarded(1'd1)) saxi_wr_in(.RST(RST_N),
					 .CLK(CLK),
					 .D_IN(saxi_wr_in$D_IN),
					 .ENQ(saxi_wr_in$ENQ),
					 .DEQ(saxi_wr_in$DEQ),
					 .CLR(saxi_wr_in$CLR),
					 .D_OUT(saxi_wr_in$D_OUT),
					 .FULL_N(saxi_wr_in$FULL_N),
					 .EMPTY_N(saxi_wr_in$EMPTY_N));

  // submodule saxi_wr_out
  SizedFIFO #(.p1width(32'd2),
	      .p2depth(32'd4),
	      .p3cntr_width(32'd2),
	      .guarded(1'd1)) saxi_wr_out(.RST(RST_N),
					  .CLK(CLK),
					  .D_IN(saxi_wr_out$D_IN),
					  .ENQ(saxi_wr_out$ENQ),
					  .DEQ(saxi_wr_out$DEQ),
					  .CLR(saxi_wr_out$CLR),
					  .D_OUT(saxi_wr_out$D_OUT),
					  .FULL_N(saxi_wr_out$FULL_N),
					  .EMPTY_N(saxi_wr_out$EMPTY_N));

  // submodule wr_stream_out
  SizedFIFO #(.p1width(32'd41),
	      .p2depth(32'd16),
	      .p3cntr_width(32'd4),
	      .guarded(1'd1)) wr_stream_out(.RST(RST_N),
					    .CLK(CLK),
					    .D_IN(wr_stream_out$D_IN),
					    .ENQ(wr_stream_out$ENQ),
					    .DEQ(wr_stream_out$DEQ),
					    .CLR(wr_stream_out$CLR),
					    .D_OUT(wr_stream_out$D_OUT),
					    .FULL_N(wr_stream_out$FULL_N),
					    .EMPTY_N(wr_stream_out$EMPTY_N));

  // inlined wires
  assign saxi_wr_addrIn_rv$EN_port0__write =
	     !saxi_wr_addrIn_rv[19] && !saxi_wr_isRst_isInReset &&
	     S_AXI_awvalid ;
  assign saxi_wr_addrIn_rv$port0__write_1 =
	     { 1'd1, S_AXI_awaddr, S_AXI_awprot } ;
  assign saxi_wr_addrIn_rv$port1__read =
	     saxi_wr_addrIn_rv$EN_port0__write ?
	       saxi_wr_addrIn_rv$port0__write_1 :
	       saxi_wr_addrIn_rv ;
  assign saxi_wr_addrIn_rv$EN_port1__write =
	     saxi_wr_addrIn_rv$port1__read[19] &&
	     saxi_wr_dataIn_rv$port1__read[36] &&
	     saxi_wr_in$FULL_N ;
  assign saxi_wr_addrIn_rv$port2__read =
	     saxi_wr_addrIn_rv$EN_port1__write ?
	       20'd174762 :
	       saxi_wr_addrIn_rv$port1__read ;
  assign saxi_wr_dataIn_rv$EN_port0__write =
	     !saxi_wr_dataIn_rv[36] && !saxi_wr_isRst_isInReset &&
	     S_AXI_wvalid ;
  assign saxi_wr_dataIn_rv$port0__write_1 =
	     { 1'd1, S_AXI_wdata, S_AXI_wstrb } ;
  assign saxi_wr_dataIn_rv$port1__read =
	     saxi_wr_dataIn_rv$EN_port0__write ?
	       saxi_wr_dataIn_rv$port0__write_1 :
	       saxi_wr_dataIn_rv ;
  assign saxi_wr_dataIn_rv$EN_port1__write =
	     saxi_wr_addrIn_rv$port1__read[19] &&
	     saxi_wr_dataIn_rv$port1__read[36] &&
	     saxi_wr_in$FULL_N ;
  assign saxi_wr_dataIn_rv$port2__read =
	     saxi_wr_dataIn_rv$EN_port1__write ?
	       37'h0AAAAAAAAA :
	       saxi_wr_dataIn_rv$port1__read ;

  // register rd_stream_isRst_isInReset
  assign rd_stream_isRst_isInReset$D_IN = 1'd0 ;
  assign rd_stream_isRst_isInReset$EN = rd_stream_isRst_isInReset ;

  // register saxi_rd_isRst_isInReset
  assign saxi_rd_isRst_isInReset$D_IN = 1'd0 ;
  assign saxi_rd_isRst_isInReset$EN = saxi_rd_isRst_isInReset ;

  // register saxi_wr_addrIn_rv
  assign saxi_wr_addrIn_rv$D_IN = saxi_wr_addrIn_rv$port2__read ;
  assign saxi_wr_addrIn_rv$EN = 1'b1 ;

  // register saxi_wr_dataIn_rv
  assign saxi_wr_dataIn_rv$D_IN = saxi_wr_dataIn_rv$port2__read ;
  assign saxi_wr_dataIn_rv$EN = 1'b1 ;

  // register saxi_wr_isRst_isInReset
  assign saxi_wr_isRst_isInReset$D_IN = 1'd0 ;
  assign saxi_wr_isRst_isInReset$EN = saxi_wr_isRst_isInReset ;

  // register wr_stream_isRst_isInReset
  assign wr_stream_isRst_isInReset$D_IN = 1'd0 ;
  assign wr_stream_isRst_isInReset$EN = wr_stream_isRst_isInReset ;

  // submodule rd_stream_in
  assign rd_stream_in$D_IN =
	     { S_AXIS_tdata, S_AXIS_tkeep, S_AXIS_tDest, S_AXIS_tlast } ;
  assign rd_stream_in$ENQ =
	     rd_stream_in$FULL_N && !rd_stream_isRst_isInReset &&
	     S_AXIS_tvalid ;
  assign rd_stream_in$DEQ =
	     rd_stream_in$EMPTY_N && saxi_rd_in$EMPTY_N &&
	     saxi_rd_out$FULL_N ;
  assign rd_stream_in$CLR = 1'b0 ;

  // submodule saxi_rd_in
  assign saxi_rd_in$D_IN = { S_AXI_araddr, S_AXI_arprot } ;
  assign saxi_rd_in$ENQ =
	     saxi_rd_in$FULL_N && !saxi_rd_isRst_isInReset && S_AXI_arvalid ;
  assign saxi_rd_in$DEQ =
	     rd_stream_in$EMPTY_N && saxi_rd_in$EMPTY_N &&
	     saxi_rd_out$FULL_N ;
  assign saxi_rd_in$CLR = 1'b0 ;

  // submodule saxi_rd_out
  assign saxi_rd_out$D_IN = { rd_stream_in$D_OUT[40:9], 2'd0 } ;
  assign saxi_rd_out$ENQ =
	     rd_stream_in$EMPTY_N && saxi_rd_in$EMPTY_N &&
	     saxi_rd_out$FULL_N ;
  assign saxi_rd_out$DEQ =
	     saxi_rd_out$EMPTY_N && !saxi_rd_isRst_isInReset && S_AXI_rready ;
  assign saxi_rd_out$CLR = 1'b0 ;

  // submodule saxi_wr_in
  assign saxi_wr_in$D_IN =
	     { saxi_wr_addrIn_rv$port1__read[18:3],
	       saxi_wr_dataIn_rv$port1__read[35:0],
	       saxi_wr_addrIn_rv$port1__read[2:0] } ;
  assign saxi_wr_in$ENQ =
	     saxi_wr_addrIn_rv$port1__read[19] &&
	     saxi_wr_dataIn_rv$port1__read[36] &&
	     saxi_wr_in$FULL_N ;
  assign saxi_wr_in$DEQ =
	     saxi_wr_in$EMPTY_N && saxi_wr_out$FULL_N &&
	     wr_stream_out$FULL_N ;
  assign saxi_wr_in$CLR = 1'b0 ;

  // submodule saxi_wr_out
  assign saxi_wr_out$D_IN = 2'd0 ;
  assign saxi_wr_out$ENQ =
	     saxi_wr_in$EMPTY_N && saxi_wr_out$FULL_N &&
	     wr_stream_out$FULL_N ;
  assign saxi_wr_out$DEQ =
	     saxi_wr_out$EMPTY_N && !saxi_wr_isRst_isInReset && S_AXI_bready ;
  assign saxi_wr_out$CLR = 1'b0 ;

  // submodule wr_stream_out
  assign wr_stream_out$D_IN = { saxi_wr_in$D_OUT[38:0], 2'h2 } ;
  assign wr_stream_out$ENQ =
	     saxi_wr_in$EMPTY_N && saxi_wr_out$FULL_N &&
	     wr_stream_out$FULL_N ;
  assign wr_stream_out$DEQ =
	     wr_stream_out$EMPTY_N && !wr_stream_isRst_isInReset &&
	     M_AXIS_tready ;
  assign wr_stream_out$CLR = 1'b0 ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        saxi_wr_addrIn_rv <= `BSV_ASSIGNMENT_DELAY 20'd174762;
	saxi_wr_dataIn_rv <= `BSV_ASSIGNMENT_DELAY 37'h0AAAAAAAAA;
      end
    else
      begin
        if (saxi_wr_addrIn_rv$EN)
	  saxi_wr_addrIn_rv <= `BSV_ASSIGNMENT_DELAY saxi_wr_addrIn_rv$D_IN;
	if (saxi_wr_dataIn_rv$EN)
	  saxi_wr_dataIn_rv <= `BSV_ASSIGNMENT_DELAY saxi_wr_dataIn_rv$D_IN;
      end
  end

  always@(posedge CLK or `BSV_RESET_EDGE RST_N)
  if (RST_N == `BSV_RESET_VALUE)
    begin
      rd_stream_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY 1'd1;
      saxi_rd_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY 1'd1;
      saxi_wr_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY 1'd1;
      wr_stream_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY 1'd1;
    end
  else
    begin
      if (rd_stream_isRst_isInReset$EN)
	rd_stream_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY
	    rd_stream_isRst_isInReset$D_IN;
      if (saxi_rd_isRst_isInReset$EN)
	saxi_rd_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY
	    saxi_rd_isRst_isInReset$D_IN;
      if (saxi_wr_isRst_isInReset$EN)
	saxi_wr_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY
	    saxi_wr_isRst_isInReset$D_IN;
      if (wr_stream_isRst_isInReset$EN)
	wr_stream_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY
	    wr_stream_isRst_isInReset$D_IN;
    end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    rd_stream_isRst_isInReset = 1'h0;
    saxi_rd_isRst_isInReset = 1'h0;
    saxi_wr_addrIn_rv = 20'hAAAAA;
    saxi_wr_dataIn_rv = 37'h0AAAAAAAAA;
    saxi_wr_isRst_isInReset = 1'h0;
    wr_stream_isRst_isInReset = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkAXIMMStreamAdapter
