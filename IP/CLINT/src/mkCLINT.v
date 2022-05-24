//
// Generated by Bluespec Compiler, version 2022.01 (build 066c7a8)
//
// On Wed Mar 30 14:54:55 CEST 2022
//
//
// Ports:
// Name                         I/O  size props
// axi_l_awready                  O     1
// axi_l_wready                   O     1
// axi_l_bvalid                   O     1
// axi_l_bresp                    O     2
// axi_l_arready                  O     1
// axi_l_rvalid                   O     1
// axi_l_rdata                    O    32
// axi_l_rresp                    O     2
// software_int                   O     1 reg
// RDY_software_int               O     1 const
// timer_int                      O     1
// RDY_timer_int                  O     1 const
// CLK                            I     1 clock
// RST_N                          I     1 reset
// axi_l_awvalid                  I     1
// axi_l_awaddr                   I    16
// axi_l_awprot                   I     3
// axi_l_wvalid                   I     1
// axi_l_wdata                    I    32
// axi_l_wstrb                    I     4
// axi_l_bready                   I     1
// axi_l_arvalid                  I     1
// axi_l_araddr                   I    16
// axi_l_arprot                   I     3
// axi_l_rready                   I     1
//
// Combinational paths from inputs to outputs:
//   axi_l_rready -> axi_l_arready
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

module mkCLINT(CLK,
	       RST_N,

	       axi_l_awready,

	       axi_l_awvalid,

	       axi_l_awaddr,

	       axi_l_awprot,

	       axi_l_wready,

	       axi_l_wvalid,

	       axi_l_wdata,

	       axi_l_wstrb,

	       axi_l_bvalid,

	       axi_l_bready,

	       axi_l_bresp,

	       axi_l_arready,

	       axi_l_arvalid,

	       axi_l_araddr,

	       axi_l_arprot,

	       axi_l_rvalid,

	       axi_l_rready,

	       axi_l_rdata,

	       axi_l_rresp,

	       software_int,
	       RDY_software_int,

	       timer_int,
	       RDY_timer_int);
  input  CLK;
  input  RST_N;

  // value method s_wr_awready
  output axi_l_awready;

  // action method s_wr_pawvalid
  input  axi_l_awvalid;

  // action method s_wr_pawaddr
  input  [15 : 0] axi_l_awaddr;

  // action method s_wr_pawprot
  input  [2 : 0] axi_l_awprot;

  // value method s_wr_wready
  output axi_l_wready;

  // action method s_wr_pwvalid
  input  axi_l_wvalid;

  // action method s_wr_pwdata
  input  [31 : 0] axi_l_wdata;

  // action method s_wr_pwstrb
  input  [3 : 0] axi_l_wstrb;

  // value method s_wr_bvalid
  output axi_l_bvalid;

  // action method s_wr_pbready
  input  axi_l_bready;

  // value method s_wr_bresp
  output [1 : 0] axi_l_bresp;

  // value method s_rd_arready
  output axi_l_arready;

  // action method s_rd_parvalid
  input  axi_l_arvalid;

  // action method s_rd_paraddr
  input  [15 : 0] axi_l_araddr;

  // action method s_rd_parprot
  input  [2 : 0] axi_l_arprot;

  // value method s_rd_rvalid
  output axi_l_rvalid;

  // action method s_rd_prready
  input  axi_l_rready;

  // value method s_rd_rdata
  output [31 : 0] axi_l_rdata;

  // value method s_rd_rresp
  output [1 : 0] axi_l_rresp;

  // value method software_int
  output software_int;
  output RDY_software_int;

  // value method timer_int
  output timer_int;
  output RDY_timer_int;

  // signals for module outputs
  wire [31 : 0] axi_l_rdata;
  wire [1 : 0] axi_l_bresp, axi_l_rresp;
  wire RDY_software_int,
       RDY_timer_int,
       axi_l_arready,
       axi_l_awready,
       axi_l_bvalid,
       axi_l_rvalid,
       axi_l_wready,
       software_int,
       timer_int;

  // inlined wires
  reg [34 : 0] s_rd_i_out_rv$port1__write_1;
  reg [2 : 0] s_wr_i_out_rv$port1__write_1;
  wire [55 : 0] s_wr_i_in_rv$port1__read,
		s_wr_i_in_rv$port1__write_1,
		s_wr_i_in_rv$port2__read;
  wire [36 : 0] s_wr_i_dataIn_rv$port0__write_1,
		s_wr_i_dataIn_rv$port1__read,
		s_wr_i_dataIn_rv$port2__read;
  wire [34 : 0] s_rd_i_out_rv$port1__read, s_rd_i_out_rv$port2__read;
  wire [19 : 0] s_rd_i_in_rv$port1__read,
		s_rd_i_in_rv$port1__write_1,
		s_rd_i_in_rv$port2__read,
		s_wr_i_addrIn_rv$port0__write_1,
		s_wr_i_addrIn_rv$port1__read,
		s_wr_i_addrIn_rv$port2__read;
  wire [2 : 0] s_wr_i_out_rv$port1__read, s_wr_i_out_rv$port2__read;
  wire s_rd_i_in_rv$EN_port0__write,
       s_rd_i_in_rv$EN_port1__write,
       s_rd_i_out_rv$EN_port0__write,
       s_rd_i_out_rv$EN_port1__write,
       s_wr_i_addrIn_rv$EN_port0__write,
       s_wr_i_addrIn_rv$EN_port1__write,
       s_wr_i_dataIn_rv$EN_port0__write,
       s_wr_i_dataIn_rv$EN_port1__write,
       s_wr_i_in_rv$EN_port1__write,
       s_wr_i_out_rv$EN_port0__write;

  // register mtime
  reg [63 : 0] mtime;
  wire [63 : 0] mtime$D_IN;
  wire mtime$EN;

  // register mtimecmp
  reg [63 : 0] mtimecmp;
  wire [63 : 0] mtimecmp$D_IN;
  wire mtimecmp$EN;

  // register s_rd_i_in_rv
  reg [19 : 0] s_rd_i_in_rv;
  wire [19 : 0] s_rd_i_in_rv$D_IN;
  wire s_rd_i_in_rv$EN;

  // register s_rd_i_isRst_isInReset
  reg s_rd_i_isRst_isInReset;
  wire s_rd_i_isRst_isInReset$D_IN, s_rd_i_isRst_isInReset$EN;

  // register s_rd_i_out_rv
  reg [34 : 0] s_rd_i_out_rv;
  wire [34 : 0] s_rd_i_out_rv$D_IN;
  wire s_rd_i_out_rv$EN;

  // register s_wr_i_addrIn_rv
  reg [19 : 0] s_wr_i_addrIn_rv;
  wire [19 : 0] s_wr_i_addrIn_rv$D_IN;
  wire s_wr_i_addrIn_rv$EN;

  // register s_wr_i_dataIn_rv
  reg [36 : 0] s_wr_i_dataIn_rv;
  wire [36 : 0] s_wr_i_dataIn_rv$D_IN;
  wire s_wr_i_dataIn_rv$EN;

  // register s_wr_i_in_rv
  reg [55 : 0] s_wr_i_in_rv;
  wire [55 : 0] s_wr_i_in_rv$D_IN;
  wire s_wr_i_in_rv$EN;

  // register s_wr_i_isRst_isInReset
  reg s_wr_i_isRst_isInReset;
  wire s_wr_i_isRst_isInReset$D_IN, s_wr_i_isRst_isInReset$EN;

  // register s_wr_i_out_rv
  reg [2 : 0] s_wr_i_out_rv;
  wire [2 : 0] s_wr_i_out_rv$D_IN;
  wire s_wr_i_out_rv$EN;

  // register swi
  reg swi;
  wire swi$D_IN, swi$EN;

  // rule scheduling signals
  wire WILL_FIRE_RL_handleWr;

  // inputs to muxes for submodule ports
  wire [63 : 0] MUX_mtime$write_1__VAL_1, MUX_mtime$write_1__VAL_2;
  wire MUX_mtime$write_1__SEL_1;

  // remaining internal signals
  wire [63 : 0] x__h3640, x__h3716, x__h3790, x__h3864;
  wire [31 : 0] x_data__h4380;

  // value method s_wr_awready
  assign axi_l_awready = !s_wr_i_isRst_isInReset && !s_wr_i_addrIn_rv[19] ;

  // value method s_wr_wready
  assign axi_l_wready = !s_wr_i_isRst_isInReset && !s_wr_i_dataIn_rv[36] ;

  // value method s_wr_bvalid
  assign axi_l_bvalid = !s_wr_i_isRst_isInReset && s_wr_i_out_rv[2] ;

  // value method s_wr_bresp
  assign axi_l_bresp = s_wr_i_out_rv[2] ? s_wr_i_out_rv[1:0] : 2'd0 ;

  // value method s_rd_arready
  assign axi_l_arready =
	     !s_rd_i_isRst_isInReset && !s_rd_i_in_rv$port1__read[19] ;

  // value method s_rd_rvalid
  assign axi_l_rvalid = !s_rd_i_isRst_isInReset && s_rd_i_out_rv[34] ;

  // value method s_rd_rdata
  assign axi_l_rdata = s_rd_i_out_rv[34] ? s_rd_i_out_rv[33:2] : 32'd0 ;

  // value method s_rd_rresp
  assign axi_l_rresp = s_rd_i_out_rv[34] ? s_rd_i_out_rv[1:0] : 2'd0 ;

  // value method software_int
  assign software_int = swi ;
  assign RDY_software_int = 1'd1 ;

  // value method timer_int
  assign timer_int = mtime >= mtimecmp ;
  assign RDY_timer_int = 1'd1 ;

  // rule RL_handleWr
  assign WILL_FIRE_RL_handleWr =
	     s_wr_i_in_rv[55] && !s_wr_i_out_rv$port1__read[2] ;

  // inputs to muxes for submodule ports
  assign MUX_mtime$write_1__SEL_1 =
	     WILL_FIRE_RL_handleWr &&
	     (s_wr_i_in_rv[54:39] == 16'hBFF8 ||
	      s_wr_i_in_rv[54:39] == 16'hBFFC) ;
  assign MUX_mtime$write_1__VAL_1 =
	     (s_wr_i_in_rv[54:39] == 16'hBFF8) ? x__h3790 : x__h3864 ;
  assign MUX_mtime$write_1__VAL_2 = mtime + 64'd1 ;

  // inlined wires
  assign s_rd_i_in_rv$EN_port0__write =
	     s_rd_i_in_rv[19] && !s_rd_i_out_rv$port1__read[34] ;
  assign s_rd_i_in_rv$port1__read =
	     s_rd_i_in_rv$EN_port0__write ? 20'd174762 : s_rd_i_in_rv ;
  assign s_rd_i_in_rv$EN_port1__write =
	     !s_rd_i_in_rv$port1__read[19] && !s_rd_i_isRst_isInReset &&
	     axi_l_arvalid ;
  assign s_rd_i_in_rv$port1__write_1 = { 1'd1, axi_l_araddr, axi_l_arprot } ;
  assign s_rd_i_in_rv$port2__read =
	     s_rd_i_in_rv$EN_port1__write ?
	       s_rd_i_in_rv$port1__write_1 :
	       s_rd_i_in_rv$port1__read ;
  assign s_rd_i_out_rv$EN_port0__write =
	     s_rd_i_out_rv[34] && !s_rd_i_isRst_isInReset && axi_l_rready ;
  assign s_rd_i_out_rv$port1__read =
	     s_rd_i_out_rv$EN_port0__write ? 35'h2AAAAAAAA : s_rd_i_out_rv ;
  assign s_rd_i_out_rv$EN_port1__write =
	     s_rd_i_in_rv[19] && !s_rd_i_out_rv$port1__read[34] ;
  always@(s_rd_i_in_rv or x_data__h4380 or mtimecmp or mtime)
  begin
    case (s_rd_i_in_rv[18:3])
      16'd0: s_rd_i_out_rv$port1__write_1 = { 1'd1, x_data__h4380, 2'd0 };
      16'h4000: s_rd_i_out_rv$port1__write_1 = { 1'd1, mtimecmp[31:0], 2'd0 };
      16'h4004:
	  s_rd_i_out_rv$port1__write_1 = { 1'd1, mtimecmp[63:32], 2'd0 };
      16'hBFF8: s_rd_i_out_rv$port1__write_1 = { 1'd1, mtime[31:0], 2'd0 };
      16'hBFFC: s_rd_i_out_rv$port1__write_1 = { 1'd1, mtime[63:32], 2'd0 };
      default: s_rd_i_out_rv$port1__write_1 = 35'h77AB6FBBC;
    endcase
  end
  assign s_rd_i_out_rv$port2__read =
	     s_rd_i_out_rv$EN_port1__write ?
	       s_rd_i_out_rv$port1__write_1 :
	       s_rd_i_out_rv$port1__read ;
  assign s_wr_i_in_rv$port1__read =
	     WILL_FIRE_RL_handleWr ? 56'h2AAAAAAAAAAAAA : s_wr_i_in_rv ;
  assign s_wr_i_in_rv$EN_port1__write =
	     s_wr_i_addrIn_rv$port1__read[19] &&
	     s_wr_i_dataIn_rv$port1__read[36] &&
	     !s_wr_i_in_rv$port1__read[55] ;
  assign s_wr_i_in_rv$port1__write_1 =
	     { 1'd1,
	       s_wr_i_addrIn_rv$port1__read[18:3],
	       s_wr_i_dataIn_rv$port1__read[35:0],
	       s_wr_i_addrIn_rv$port1__read[2:0] } ;
  assign s_wr_i_in_rv$port2__read =
	     s_wr_i_in_rv$EN_port1__write ?
	       s_wr_i_in_rv$port1__write_1 :
	       s_wr_i_in_rv$port1__read ;
  assign s_wr_i_out_rv$EN_port0__write =
	     s_wr_i_out_rv[2] && !s_wr_i_isRst_isInReset && axi_l_bready ;
  assign s_wr_i_out_rv$port1__read =
	     s_wr_i_out_rv$EN_port0__write ? 3'd2 : s_wr_i_out_rv ;
  always@(s_wr_i_in_rv)
  begin
    case (s_wr_i_in_rv[54:39])
      16'd0, 16'h4000, 16'h4004, 16'hBFF8, 16'hBFFC:
	  s_wr_i_out_rv$port1__write_1 = 3'd4;
      default: s_wr_i_out_rv$port1__write_1 = 3'd7;
    endcase
  end
  assign s_wr_i_out_rv$port2__read =
	     WILL_FIRE_RL_handleWr ?
	       s_wr_i_out_rv$port1__write_1 :
	       s_wr_i_out_rv$port1__read ;
  assign s_wr_i_addrIn_rv$EN_port0__write =
	     !s_wr_i_addrIn_rv[19] && !s_wr_i_isRst_isInReset &&
	     axi_l_awvalid ;
  assign s_wr_i_addrIn_rv$port0__write_1 =
	     { 1'd1, axi_l_awaddr, axi_l_awprot } ;
  assign s_wr_i_addrIn_rv$port1__read =
	     s_wr_i_addrIn_rv$EN_port0__write ?
	       s_wr_i_addrIn_rv$port0__write_1 :
	       s_wr_i_addrIn_rv ;
  assign s_wr_i_addrIn_rv$EN_port1__write =
	     s_wr_i_addrIn_rv$port1__read[19] &&
	     s_wr_i_dataIn_rv$port1__read[36] &&
	     !s_wr_i_in_rv$port1__read[55] ;
  assign s_wr_i_addrIn_rv$port2__read =
	     s_wr_i_addrIn_rv$EN_port1__write ?
	       20'd174762 :
	       s_wr_i_addrIn_rv$port1__read ;
  assign s_wr_i_dataIn_rv$EN_port0__write =
	     !s_wr_i_dataIn_rv[36] && !s_wr_i_isRst_isInReset &&
	     axi_l_wvalid ;
  assign s_wr_i_dataIn_rv$port0__write_1 =
	     { 1'd1, axi_l_wdata, axi_l_wstrb } ;
  assign s_wr_i_dataIn_rv$port1__read =
	     s_wr_i_dataIn_rv$EN_port0__write ?
	       s_wr_i_dataIn_rv$port0__write_1 :
	       s_wr_i_dataIn_rv ;
  assign s_wr_i_dataIn_rv$EN_port1__write =
	     s_wr_i_addrIn_rv$port1__read[19] &&
	     s_wr_i_dataIn_rv$port1__read[36] &&
	     !s_wr_i_in_rv$port1__read[55] ;
  assign s_wr_i_dataIn_rv$port2__read =
	     s_wr_i_dataIn_rv$EN_port1__write ?
	       37'h0AAAAAAAAA :
	       s_wr_i_dataIn_rv$port1__read ;

  // register mtime
  assign mtime$D_IN =
	     MUX_mtime$write_1__SEL_1 ?
	       MUX_mtime$write_1__VAL_1 :
	       MUX_mtime$write_1__VAL_2 ;
  assign mtime$EN =
	     WILL_FIRE_RL_handleWr &&
	     (s_wr_i_in_rv[54:39] == 16'hBFF8 ||
	      s_wr_i_in_rv[54:39] == 16'hBFFC) ||
	     !WILL_FIRE_RL_handleWr ;

  // register mtimecmp
  assign mtimecmp$D_IN =
	     (s_wr_i_in_rv[54:39] == 16'h4000) ? x__h3640 : x__h3716 ;
  assign mtimecmp$EN =
	     WILL_FIRE_RL_handleWr &&
	     (s_wr_i_in_rv[54:39] == 16'h4000 ||
	      s_wr_i_in_rv[54:39] == 16'h4004) ;

  // register s_rd_i_in_rv
  assign s_rd_i_in_rv$D_IN = s_rd_i_in_rv$port2__read ;
  assign s_rd_i_in_rv$EN = 1'b1 ;

  // register s_rd_i_isRst_isInReset
  assign s_rd_i_isRst_isInReset$D_IN = 1'd0 ;
  assign s_rd_i_isRst_isInReset$EN = s_rd_i_isRst_isInReset ;

  // register s_rd_i_out_rv
  assign s_rd_i_out_rv$D_IN = s_rd_i_out_rv$port2__read ;
  assign s_rd_i_out_rv$EN = 1'b1 ;

  // register s_wr_i_addrIn_rv
  assign s_wr_i_addrIn_rv$D_IN = s_wr_i_addrIn_rv$port2__read ;
  assign s_wr_i_addrIn_rv$EN = 1'b1 ;

  // register s_wr_i_dataIn_rv
  assign s_wr_i_dataIn_rv$D_IN = s_wr_i_dataIn_rv$port2__read ;
  assign s_wr_i_dataIn_rv$EN = 1'b1 ;

  // register s_wr_i_in_rv
  assign s_wr_i_in_rv$D_IN = s_wr_i_in_rv$port2__read ;
  assign s_wr_i_in_rv$EN = 1'b1 ;

  // register s_wr_i_isRst_isInReset
  assign s_wr_i_isRst_isInReset$D_IN = 1'd0 ;
  assign s_wr_i_isRst_isInReset$EN = s_wr_i_isRst_isInReset ;

  // register s_wr_i_out_rv
  assign s_wr_i_out_rv$D_IN = s_wr_i_out_rv$port2__read ;
  assign s_wr_i_out_rv$EN = 1'b1 ;

  // register swi
  assign swi$D_IN = s_wr_i_in_rv[7] ;
  assign swi$EN = WILL_FIRE_RL_handleWr && s_wr_i_in_rv[54:39] == 16'd0 ;

  // remaining internal signals
  assign x__h3640 = { mtimecmp[63:32], s_wr_i_in_rv[38:7] } ;
  assign x__h3716 = { s_wr_i_in_rv[38:7], mtimecmp[31:0] } ;
  assign x__h3790 = { mtime[63:32], s_wr_i_in_rv[38:7] } ;
  assign x__h3864 = { s_wr_i_in_rv[38:7], mtime[31:0] } ;
  assign x_data__h4380 = { 31'd0, swi } ;

  // handling of inlined registers

  always@(posedge CLK)
  begin
    if (RST_N == `BSV_RESET_VALUE)
      begin
        mtime <= `BSV_ASSIGNMENT_DELAY 64'd0;
	mtimecmp <= `BSV_ASSIGNMENT_DELAY 64'd0;
	s_rd_i_in_rv <= `BSV_ASSIGNMENT_DELAY 20'd174762;
	s_rd_i_out_rv <= `BSV_ASSIGNMENT_DELAY 35'h2AAAAAAAA;
	s_wr_i_addrIn_rv <= `BSV_ASSIGNMENT_DELAY 20'd174762;
	s_wr_i_dataIn_rv <= `BSV_ASSIGNMENT_DELAY 37'h0AAAAAAAAA;
	s_wr_i_in_rv <= `BSV_ASSIGNMENT_DELAY 56'h2AAAAAAAAAAAAA;
	s_wr_i_out_rv <= `BSV_ASSIGNMENT_DELAY 3'd2;
	swi <= `BSV_ASSIGNMENT_DELAY 1'd0;
      end
    else
      begin
        if (mtime$EN) mtime <= `BSV_ASSIGNMENT_DELAY mtime$D_IN;
	if (mtimecmp$EN) mtimecmp <= `BSV_ASSIGNMENT_DELAY mtimecmp$D_IN;
	if (s_rd_i_in_rv$EN)
	  s_rd_i_in_rv <= `BSV_ASSIGNMENT_DELAY s_rd_i_in_rv$D_IN;
	if (s_rd_i_out_rv$EN)
	  s_rd_i_out_rv <= `BSV_ASSIGNMENT_DELAY s_rd_i_out_rv$D_IN;
	if (s_wr_i_addrIn_rv$EN)
	  s_wr_i_addrIn_rv <= `BSV_ASSIGNMENT_DELAY s_wr_i_addrIn_rv$D_IN;
	if (s_wr_i_dataIn_rv$EN)
	  s_wr_i_dataIn_rv <= `BSV_ASSIGNMENT_DELAY s_wr_i_dataIn_rv$D_IN;
	if (s_wr_i_in_rv$EN)
	  s_wr_i_in_rv <= `BSV_ASSIGNMENT_DELAY s_wr_i_in_rv$D_IN;
	if (s_wr_i_out_rv$EN)
	  s_wr_i_out_rv <= `BSV_ASSIGNMENT_DELAY s_wr_i_out_rv$D_IN;
	if (swi$EN) swi <= `BSV_ASSIGNMENT_DELAY swi$D_IN;
      end
  end

  always@(posedge CLK or `BSV_RESET_EDGE RST_N)
  if (RST_N == `BSV_RESET_VALUE)
    begin
      s_rd_i_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY 1'd1;
      s_wr_i_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY 1'd1;
    end
  else
    begin
      if (s_rd_i_isRst_isInReset$EN)
	s_rd_i_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY
	    s_rd_i_isRst_isInReset$D_IN;
      if (s_wr_i_isRst_isInReset$EN)
	s_wr_i_isRst_isInReset <= `BSV_ASSIGNMENT_DELAY
	    s_wr_i_isRst_isInReset$D_IN;
    end

  // synopsys translate_off
  `ifdef BSV_NO_INITIAL_BLOCKS
  `else // not BSV_NO_INITIAL_BLOCKS
  initial
  begin
    mtime = 64'hAAAAAAAAAAAAAAAA;
    mtimecmp = 64'hAAAAAAAAAAAAAAAA;
    s_rd_i_in_rv = 20'hAAAAA;
    s_rd_i_isRst_isInReset = 1'h0;
    s_rd_i_out_rv = 35'h2AAAAAAAA;
    s_wr_i_addrIn_rv = 20'hAAAAA;
    s_wr_i_dataIn_rv = 37'h0AAAAAAAAA;
    s_wr_i_in_rv = 56'hAAAAAAAAAAAAAA;
    s_wr_i_isRst_isInReset = 1'h0;
    s_wr_i_out_rv = 3'h2;
    swi = 1'h0;
  end
  `endif // BSV_NO_INITIAL_BLOCKS
  // synopsys translate_on
endmodule  // mkCLINT

