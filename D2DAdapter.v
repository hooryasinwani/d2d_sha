module LinkDisabledSubmodule(
  input        clock,
  input        reset,
  input  [3:0] io_fdi_lp_state_req, // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 26:14]
  input  [3:0] io_fdi_lp_state_req_prev, // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 26:14]
  input  [3:0] io_link_state, // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 26:14]
  output       io_disabled_entry, // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 26:14]
  output [5:0] io_disabled_sb_snd, // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 26:14]
  input  [5:0] io_disabled_sb_rcv, // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 26:14]
  input        io_disabled_sb_rdy // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 26:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg  disabled_fdi_req_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 28:37]
  reg  disabled_sbmsg_req_rcv_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 29:43]
  reg  disabled_sbmsg_rsp_rcv_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 30:43]
  reg  disabled_sbmsg_ext_rsp_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 31:43]
  reg  disabled_sbmsg_ext_req_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 32:43]
  wire  _T = io_link_state == 4'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 35:21]
  wire  _T_1 = io_link_state == 4'h1; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 36:21]
  wire  _T_2 = io_link_state == 4'h0 | _T_1; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 35:40]
  wire  _T_3 = io_link_state == 4'hb; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 37:21]
  wire  _T_4 = _T_2 | _T_3; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 36:41]
  wire  _T_5 = io_link_state == 4'h9; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 38:21]
  wire  _T_6 = _T_4 | _T_5; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 37:42]
  wire  _T_8 = io_fdi_lp_state_req == 4'hc; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 45:29]
  wire  _T_9 = _T & _T_8; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 44:40]
  wire  _T_10 = io_fdi_lp_state_req_prev == 4'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 46:34]
  wire  _T_11 = _T_9 & _T_10; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 45:54]
  wire  _T_13 = io_link_state != 4'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 51:23]
  wire  _T_14 = _T_8 & _T_13; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 50:52]
  wire  _GEN_0 = _T_14 | disabled_fdi_req_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 52:7 53:28 55:28]
  wire  _GEN_1 = _T_11 | _GEN_0; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 47:7 48:28]
  wire  _GEN_2 = io_disabled_sb_snd == 6'hc & io_disabled_sb_rdy | disabled_sbmsg_ext_req_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 58:84 59:34 61:34]
  wire  _GEN_3 = io_disabled_sb_snd == 6'h1c & io_disabled_sb_rdy | disabled_sbmsg_ext_rsp_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 64:84 65:34 67:34]
  wire  _GEN_4 = io_disabled_sb_rcv == 6'hc | disabled_sbmsg_req_rcv_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 70:63 71:34 73:34]
  wire  _GEN_5 = io_disabled_sb_rcv == 6'h1c | disabled_sbmsg_rsp_rcv_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 78:63 79:34 81:34]
  wire  _T_22 = disabled_fdi_req_reg & ~disabled_sbmsg_req_rcv_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 87:31]
  wire [5:0] _GEN_6 = disabled_sbmsg_req_rcv_reg & ~disabled_sbmsg_ext_rsp_reg ? 6'h1c : 6'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 90:75 91:26 93:26]
  wire [5:0] _GEN_7 = _T_22 & ~disabled_sbmsg_ext_req_reg ? 6'hc : _GEN_6; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 88:42 89:26]
  wire  _GEN_9 = _T_6 & _GEN_1; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 39:5 96:26]
  wire  _GEN_10 = _T_6 & _GEN_2; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 39:5 99:32]
  wire  _GEN_11 = _T_6 & _GEN_3; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 100:32 39:5]
  wire  _GEN_12 = _T_6 & _GEN_4; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 39:5 97:32]
  wire  _GEN_13 = _T_6 & _GEN_5; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 39:5 98:32]
  assign io_disabled_entry = _T_6 & (disabled_sbmsg_ext_rsp_reg | disabled_sbmsg_rsp_rcv_reg); // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 101:23 39:5 40:23]
  assign io_disabled_sb_snd = _T_6 ? _GEN_7 : 6'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 102:24 39:5]
  always @(posedge clock) begin
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 28:37]
      disabled_fdi_req_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 28:37]
    end else begin
      disabled_fdi_req_reg <= _GEN_9;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 29:43]
      disabled_sbmsg_req_rcv_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 29:43]
    end else begin
      disabled_sbmsg_req_rcv_reg <= _GEN_12;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 30:43]
      disabled_sbmsg_rsp_rcv_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 30:43]
    end else begin
      disabled_sbmsg_rsp_rcv_reg <= _GEN_13;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 31:43]
      disabled_sbmsg_ext_rsp_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 31:43]
    end else begin
      disabled_sbmsg_ext_rsp_reg <= _GEN_11;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 32:43]
      disabled_sbmsg_ext_req_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkDisabledSubmodule.scala 32:43]
    end else begin
      disabled_sbmsg_ext_req_reg <= _GEN_10;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  disabled_fdi_req_reg = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  disabled_sbmsg_req_rcv_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  disabled_sbmsg_rsp_rcv_reg = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  disabled_sbmsg_ext_rsp_reg = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  disabled_sbmsg_ext_req_reg = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LinkResetSubmodule(
  input        clock,
  input        reset,
  input  [3:0] io_fdi_lp_state_req, // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 25:14]
  input  [3:0] io_fdi_lp_state_req_prev, // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 25:14]
  input  [3:0] io_link_state, // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 25:14]
  output       io_linkreset_entry, // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 25:14]
  output [5:0] io_linkreset_sb_snd, // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 25:14]
  input  [5:0] io_linkreset_sb_rcv, // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 25:14]
  input        io_linkreset_sb_rdy // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 25:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg  linkreset_fdi_req_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 27:38]
  reg  linkreset_sbmsg_req_rcv_flag; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 28:45]
  reg  linkreset_sbmsg_rsp_rcv_flag; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 29:45]
  reg  linkreset_sbmsg_ext_rsp_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 30:44]
  reg  linkreset_sbmsg_ext_req_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 31:44]
  wire  _T = io_link_state == 4'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 34:21]
  wire  _T_1 = io_link_state == 4'h1; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 35:21]
  wire  _T_2 = io_link_state == 4'h0 | _T_1; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 34:40]
  wire  _T_3 = io_link_state == 4'hb; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 36:21]
  wire  _T_4 = _T_2 | _T_3; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 35:41]
  wire  _T_6 = io_fdi_lp_state_req == 4'h9; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 44:29]
  wire  _T_7 = _T & _T_6; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 43:40]
  wire  _T_8 = io_fdi_lp_state_req_prev == 4'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 45:34]
  wire  _T_9 = _T_7 & _T_8; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 44:55]
  wire  _T_11 = io_link_state != 4'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 50:23]
  wire  _T_12 = _T_6 & _T_11; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 49:53]
  wire  _GEN_0 = _T_12 | linkreset_fdi_req_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 51:7 52:29 54:29]
  wire  _GEN_1 = _T_9 | _GEN_0; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 46:7 47:29]
  wire  _GEN_2 = io_linkreset_sb_snd == 6'h9 & io_linkreset_sb_rdy | linkreset_sbmsg_ext_req_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 57:87 58:35 60:35]
  wire  _GEN_3 = io_linkreset_sb_snd == 6'h19 & io_linkreset_sb_rdy | linkreset_sbmsg_ext_rsp_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 63:87 64:35 66:35]
  wire  _GEN_4 = io_linkreset_sb_rcv == 6'h9 | linkreset_sbmsg_req_rcv_flag; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 70:65 71:36 73:36]
  wire  _GEN_5 = io_linkreset_sb_rcv == 6'h19 | linkreset_sbmsg_rsp_rcv_flag; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 78:65 79:36 81:36]
  wire  _T_21 = ~linkreset_sbmsg_ext_req_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 87:10]
  wire  _T_22 = linkreset_fdi_req_reg & ~linkreset_sbmsg_req_rcv_flag & _T_21; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 86:65]
  wire [5:0] _GEN_6 = linkreset_sbmsg_req_rcv_flag & ~linkreset_sbmsg_ext_rsp_reg ? 6'h19 : 6'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 89:78 90:27 92:27]
  wire [5:0] _GEN_7 = _T_22 ? 6'h9 : _GEN_6; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 87:40 88:27]
  wire  _GEN_9 = _T_4 & _GEN_1; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 37:5 95:27]
  wire  _GEN_10 = _T_4 & _GEN_2; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 37:5 98:33]
  wire  _GEN_11 = _T_4 & _GEN_3; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 37:5 99:33]
  wire  _GEN_12 = _T_4 & _GEN_4; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 37:5 96:34]
  wire  _GEN_13 = _T_4 & _GEN_5; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 37:5 97:34]
  assign io_linkreset_entry = _T_4 & (linkreset_sbmsg_ext_rsp_reg | linkreset_sbmsg_rsp_rcv_flag); // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 100:24 37:5 39:24]
  assign io_linkreset_sb_snd = _T_4 ? _GEN_7 : 6'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 101:25 37:5]
  always @(posedge clock) begin
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 27:38]
      linkreset_fdi_req_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 27:38]
    end else begin
      linkreset_fdi_req_reg <= _GEN_9;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 28:45]
      linkreset_sbmsg_req_rcv_flag <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 28:45]
    end else begin
      linkreset_sbmsg_req_rcv_flag <= _GEN_12;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 29:45]
      linkreset_sbmsg_rsp_rcv_flag <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 29:45]
    end else begin
      linkreset_sbmsg_rsp_rcv_flag <= _GEN_13;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 30:44]
      linkreset_sbmsg_ext_rsp_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 30:44]
    end else begin
      linkreset_sbmsg_ext_rsp_reg <= _GEN_11;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 31:44]
      linkreset_sbmsg_ext_req_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkResetSubmodule.scala 31:44]
    end else begin
      linkreset_sbmsg_ext_req_reg <= _GEN_10;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  linkreset_fdi_req_reg = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  linkreset_sbmsg_req_rcv_flag = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  linkreset_sbmsg_rsp_rcv_flag = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  linkreset_sbmsg_ext_rsp_reg = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  linkreset_sbmsg_ext_req_reg = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LinkInitSubmodule(
  input        clock,
  input        reset,
  input  [3:0] io_fdi_lp_state_req, // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 39:16]
  input  [3:0] io_fdi_lp_state_req_prev, // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 39:16]
  input        io_fdi_lp_rxactive_sts, // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 39:16]
  output       io_linkinit_fdi_pl_inband_pres, // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 39:16]
  output       io_linkinit_fdi_pl_rxactive_req, // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 39:16]
  input  [3:0] io_rdi_pl_state_sts, // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 39:16]
  input        io_rdi_pl_inband_pres, // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 39:16]
  output [3:0] io_linkinit_rdi_lp_state_req, // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 39:16]
  input  [3:0] io_link_state, // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 39:16]
  output       io_active_entry, // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 39:16]
  output [5:0] io_linkinit_sb_snd, // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 39:16]
  input  [5:0] io_linkinit_sb_rcv, // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 39:16]
  input        io_linkinit_sb_rdy // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 39:16]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
`endif // RANDOMIZE_REG_INIT
  reg [2:0] linkinit_state_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 42:37]
  reg  param_exch_sbmsg_rcv_flag; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 45:44]
  reg  param_exch_sbmsg_snt_flag; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 46:44]
  reg  active_sbmsg_req_rcv_flag; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 49:44]
  reg  active_sbmsg_rsp_rcv_flag; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 50:44]
  reg  active_sbmsg_ext_rsp_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 51:43]
  reg  active_sbmsg_ext_req_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 52:43]
  reg  transition_to_active_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 54:43]
  wire [2:0] _GEN_1 = io_rdi_pl_state_sts == 4'h1 ? 3'h2 : linkinit_state_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 94:59 95:34 97:34]
  wire [5:0] _GEN_2 = ~param_exch_sbmsg_snt_flag ? 6'h24 : 6'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 105:46 106:34 108:34]
  wire  _GEN_3 = io_linkinit_sb_rcv == 6'h24 | param_exch_sbmsg_rcv_flag; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 112:65 113:43 115:43]
  wire  _GEN_4 = io_linkinit_sb_rdy & io_linkinit_sb_snd == 6'h24 | param_exch_sbmsg_snt_flag; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 118:88 119:43 121:43]
  wire [2:0] _GEN_5 = param_exch_sbmsg_snt_flag & param_exch_sbmsg_rcv_flag ? 3'h3 : linkinit_state_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 125:74 126:36 128:36]
  wire [5:0] _GEN_7 = transition_to_active_reg & ~active_sbmsg_ext_req_reg ? 6'h1 : 6'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 144:79 145:36 147:34]
  wire [5:0] _GEN_8 = io_fdi_lp_rxactive_sts & io_linkinit_fdi_pl_rxactive_req & ~active_sbmsg_ext_rsp_reg ? 6'h11 :
    _GEN_7; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 142:106 143:36]
  wire  _GEN_9 = io_linkinit_sb_rcv == 6'h11 | active_sbmsg_rsp_rcv_flag; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 150:69 151:41 153:41]
  wire  _GEN_10 = io_linkinit_sb_rcv == 6'h1 | active_sbmsg_req_rcv_flag; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 156:69 157:41 159:41]
  wire  _GEN_11 = io_linkinit_sb_snd == 6'h11 & io_linkinit_sb_rdy | active_sbmsg_ext_rsp_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 162:91 163:40 165:40]
  wire  _GEN_12 = io_linkinit_sb_snd == 6'h1 & io_linkinit_sb_rdy | active_sbmsg_ext_req_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 168:91 169:40 171:40]
  wire  _T_31 = io_fdi_lp_state_req_prev == 4'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 175:43]
  wire  _T_32 = io_fdi_lp_state_req == 4'h1 & _T_31; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 174:61]
  wire  _GEN_13 = _T_32 | transition_to_active_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 175:64 176:40 178:40]
  wire [2:0] _GEN_14 = active_sbmsg_ext_rsp_reg & active_sbmsg_rsp_rcv_flag ? 3'h4 : linkinit_state_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 181:73 182:34 184:34]
  wire [2:0] _GEN_17 = 3'h4 == linkinit_state_reg ? 3'h4 : linkinit_state_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 195:32 78:34 42:37]
  wire  _GEN_18 = 3'h3 == linkinit_state_reg | 3'h4 == linkinit_state_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34 133:44]
  wire  _GEN_19 = 3'h3 == linkinit_state_reg ? active_sbmsg_req_rcv_flag : 3'h4 == linkinit_state_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34]
  wire [5:0] _GEN_20 = 3'h3 == linkinit_state_reg ? _GEN_8 : 6'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34]
  wire [2:0] _GEN_26 = 3'h3 == linkinit_state_reg ? _GEN_14 : _GEN_17; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34]
  wire  _GEN_27 = 3'h3 == linkinit_state_reg ? 1'h0 : 3'h4 == linkinit_state_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 66:23 78:34]
  wire  _GEN_28 = 3'h2 == linkinit_state_reg | _GEN_18; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34 102:42]
  wire [5:0] _GEN_29 = 3'h2 == linkinit_state_reg ? _GEN_2 : _GEN_20; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34]
  wire [2:0] _GEN_32 = 3'h2 == linkinit_state_reg ? _GEN_5 : _GEN_26; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34]
  wire  _GEN_33 = 3'h2 == linkinit_state_reg ? 1'h0 : _GEN_18; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34 58:36]
  wire  _GEN_34 = 3'h2 == linkinit_state_reg ? 1'h0 : _GEN_19; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34 68:39]
  wire  _GEN_35 = 3'h2 == linkinit_state_reg ? 1'h0 : 3'h3 == linkinit_state_reg & _GEN_9; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 73:33 78:34]
  wire  _GEN_36 = 3'h2 == linkinit_state_reg ? 1'h0 : 3'h3 == linkinit_state_reg & _GEN_10; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 72:33 78:34]
  wire  _GEN_37 = 3'h2 == linkinit_state_reg ? 1'h0 : 3'h3 == linkinit_state_reg & _GEN_11; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 74:32 78:34]
  wire  _GEN_38 = 3'h2 == linkinit_state_reg ? 1'h0 : 3'h3 == linkinit_state_reg & _GEN_12; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 75:32 78:34]
  wire  _GEN_39 = 3'h2 == linkinit_state_reg ? 1'h0 : 3'h3 == linkinit_state_reg & _GEN_13; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 76:32 78:34]
  wire  _GEN_40 = 3'h2 == linkinit_state_reg ? 1'h0 : _GEN_27; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 66:23 78:34]
  wire  _GEN_41 = 3'h1 == linkinit_state_reg | _GEN_28; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34 93:42]
  wire [5:0] _GEN_43 = 3'h1 == linkinit_state_reg ? 6'h0 : _GEN_29; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 69:26 78:34]
  wire  _GEN_44 = 3'h1 == linkinit_state_reg ? 1'h0 : 3'h2 == linkinit_state_reg & _GEN_3; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 70:33 78:34]
  wire  _GEN_45 = 3'h1 == linkinit_state_reg ? 1'h0 : 3'h2 == linkinit_state_reg & _GEN_4; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 71:33 78:34]
  wire  _GEN_46 = 3'h1 == linkinit_state_reg ? 1'h0 : _GEN_33; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34 58:36]
  wire  _GEN_47 = 3'h1 == linkinit_state_reg ? 1'h0 : _GEN_34; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34 68:39]
  wire  _GEN_53 = 3'h1 == linkinit_state_reg ? 1'h0 : _GEN_40; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 66:23 78:34]
  wire  _GEN_54 = 3'h0 == linkinit_state_reg ? 1'h0 : _GEN_53; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34 81:29]
  wire  _GEN_55 = 3'h0 == linkinit_state_reg ? 1'h0 : _GEN_41; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34 82:42]
  wire  _GEN_56 = 3'h0 == linkinit_state_reg ? 1'h0 : _GEN_47; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34 83:45]
  wire [5:0] _GEN_57 = 3'h0 == linkinit_state_reg ? 6'h0 : _GEN_43; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34 84:32]
  wire  _GEN_59 = 3'h0 == linkinit_state_reg ? 1'h0 : _GEN_44; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 70:33 78:34]
  wire  _GEN_60 = 3'h0 == linkinit_state_reg ? 1'h0 : _GEN_45; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 71:33 78:34]
  wire  _GEN_61 = 3'h0 == linkinit_state_reg ? 1'h0 : _GEN_46; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34 58:36]
  wire  _GEN_68 = io_link_state == 4'h0 & _GEN_55; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 201:36 64:44]
  wire  _GEN_71 = io_link_state == 4'h0 & _GEN_59; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 205:33 64:44]
  wire  _GEN_72 = io_link_state == 4'h0 & _GEN_60; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 206:33 64:44]
  assign io_linkinit_fdi_pl_inband_pres = io_link_state == 4'h0 & _GEN_61; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 203:38 64:44]
  assign io_linkinit_fdi_pl_rxactive_req = io_link_state == 4'h0 & _GEN_56; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 202:39 64:44]
  assign io_linkinit_rdi_lp_state_req = {{3'd0}, _GEN_68};
  assign io_active_entry = io_link_state == 4'h0 & _GEN_54; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 200:23 64:44]
  assign io_linkinit_sb_snd = io_link_state == 4'h0 ? _GEN_57 : 6'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 204:26 64:44]
  always @(posedge clock) begin
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 42:37]
      linkinit_state_reg <= 3'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 42:37]
    end else if (io_link_state == 4'h0) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 64:44]
      if (3'h0 == linkinit_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34]
        if (io_rdi_pl_inband_pres) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 85:41]
          linkinit_state_reg <= 3'h1; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 86:34]
        end
      end else if (3'h1 == linkinit_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34]
        linkinit_state_reg <= _GEN_1;
      end else begin
        linkinit_state_reg <= _GEN_32;
      end
    end else begin
      linkinit_state_reg <= 3'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 199:26]
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 45:44]
      param_exch_sbmsg_rcv_flag <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 45:44]
    end else begin
      param_exch_sbmsg_rcv_flag <= _GEN_71;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 46:44]
      param_exch_sbmsg_snt_flag <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 46:44]
    end else begin
      param_exch_sbmsg_snt_flag <= _GEN_72;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 49:44]
      active_sbmsg_req_rcv_flag <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 49:44]
    end else if (io_link_state == 4'h0) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 64:44]
      if (3'h0 == linkinit_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34]
        active_sbmsg_req_rcv_flag <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 72:33]
      end else if (3'h1 == linkinit_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34]
        active_sbmsg_req_rcv_flag <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 72:33]
      end else begin
        active_sbmsg_req_rcv_flag <= _GEN_36;
      end
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 50:44]
      active_sbmsg_rsp_rcv_flag <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 50:44]
    end else if (io_link_state == 4'h0) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 64:44]
      if (3'h0 == linkinit_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34]
        active_sbmsg_rsp_rcv_flag <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 73:33]
      end else if (3'h1 == linkinit_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34]
        active_sbmsg_rsp_rcv_flag <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 73:33]
      end else begin
        active_sbmsg_rsp_rcv_flag <= _GEN_35;
      end
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 51:43]
      active_sbmsg_ext_rsp_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 51:43]
    end else if (io_link_state == 4'h0) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 64:44]
      if (3'h0 == linkinit_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34]
        active_sbmsg_ext_rsp_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 74:32]
      end else if (3'h1 == linkinit_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34]
        active_sbmsg_ext_rsp_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 74:32]
      end else begin
        active_sbmsg_ext_rsp_reg <= _GEN_37;
      end
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 52:43]
      active_sbmsg_ext_req_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 52:43]
    end else if (io_link_state == 4'h0) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 64:44]
      if (3'h0 == linkinit_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34]
        active_sbmsg_ext_req_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 75:32]
      end else if (3'h1 == linkinit_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34]
        active_sbmsg_ext_req_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 75:32]
      end else begin
        active_sbmsg_ext_req_reg <= _GEN_38;
      end
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 54:43]
      transition_to_active_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 54:43]
    end else if (io_link_state == 4'h0) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 64:44]
      if (3'h0 == linkinit_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34]
        transition_to_active_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 76:32]
      end else if (3'h1 == linkinit_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 78:34]
        transition_to_active_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkInitSubmodule.scala 76:32]
      end else begin
        transition_to_active_reg <= _GEN_39;
      end
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  linkinit_state_reg = _RAND_0[2:0];
  _RAND_1 = {1{`RANDOM}};
  param_exch_sbmsg_rcv_flag = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  param_exch_sbmsg_snt_flag = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  active_sbmsg_req_rcv_flag = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  active_sbmsg_rsp_rcv_flag = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  active_sbmsg_ext_rsp_reg = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  active_sbmsg_ext_req_reg = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  transition_to_active_reg = _RAND_7[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ParityNegotiationSubmodule(
  input        clock,
  input        reset,
  input        io_start_negotiation, // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 26:16]
  input  [5:0] io_parity_sb_rcv, // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 26:16]
  output [5:0] io_parity_sb_snd, // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 26:16]
  input        io_parity_sb_rdy, // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 26:16]
  output       io_parity_rx_enable, // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 26:16]
  output       io_parity_tx_enable // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 26:16]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg  parity_rsp_snt_flag_reg; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 28:42]
  reg  parity_req_rcv_flag_reg; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 30:42]
  reg  parity_rx_enable_reg; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 32:39]
  reg  parity_tx_enable_reg; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 33:39]
  wire  _T_3 = ~parity_rsp_snt_flag_reg; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 51:69]
  wire [5:0] _GEN_0 = parity_req_rcv_flag_reg & _T_3 ? 6'h32 : 6'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 53:95 54:30 56:31]
  wire  _T_13 = io_parity_sb_snd == 6'h31; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 73:32]
  wire  _T_14 = io_parity_sb_snd == 6'h32; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 73:91]
  wire  _GEN_6 = (io_parity_sb_snd == 6'h31 | io_parity_sb_snd == 6'h32) & io_parity_sb_rdy | parity_rsp_snt_flag_reg; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 73:151 74:37 76:37]
  wire  _GEN_7 = io_parity_sb_rcv == 6'h21 | parity_req_rcv_flag_reg; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 79:70 80:37 82:37]
  wire  _T_18 = io_parity_sb_rcv == 6'h31; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 85:31]
  wire  _GEN_9 = _T_14 & io_parity_sb_rdy ? 1'h0 : parity_rx_enable_reg; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 94:96 95:34 32:39]
  wire  _GEN_10 = _T_14 & io_parity_sb_rdy ? _GEN_6 : parity_rsp_snt_flag_reg; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 94:96 97:37]
  wire  _GEN_11 = _T_13 & io_parity_sb_rdy | _GEN_9; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 92:90 93:34]
  wire  _GEN_12 = _T_13 & io_parity_sb_rdy ? _GEN_6 : _GEN_10; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 92:90]
  wire  _GEN_19 = io_start_negotiation & _GEN_12; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 43:31 113:33]
  wire  _GEN_20 = io_start_negotiation & _GEN_7; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 43:31 115:33]
  assign io_parity_sb_snd = io_start_negotiation ? _GEN_0 : 6'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 109:27 43:31]
  assign io_parity_rx_enable = parity_rx_enable_reg; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 39:25]
  assign io_parity_tx_enable = parity_tx_enable_reg; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 40:25]
  always @(posedge clock) begin
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 28:42]
      parity_rsp_snt_flag_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 28:42]
    end else begin
      parity_rsp_snt_flag_reg <= _GEN_19;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 30:42]
      parity_req_rcv_flag_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 30:42]
    end else begin
      parity_req_rcv_flag_reg <= _GEN_20;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 32:39]
      parity_rx_enable_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 32:39]
    end else if (io_start_negotiation) begin // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 43:31]
      parity_rx_enable_reg <= _GEN_11;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 33:39]
      parity_tx_enable_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 33:39]
    end else if (io_start_negotiation) begin // @[\\src\\main\\scala\\d2dadapter\\ParityNegotiationSubmodule.scala 43:31]
      parity_tx_enable_reg <= _T_18;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  parity_rsp_snt_flag_reg = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  parity_req_rcv_flag_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  parity_rx_enable_reg = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  parity_tx_enable_reg = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module LinkManagementController(
  input        clock,
  input        reset,
  input  [3:0] io_fdi_lp_state_req, // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 49:16]
  input        io_fdi_lp_linkerror, // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 49:16]
  input        io_fdi_lp_rx_active_sts, // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 49:16]
  output [3:0] io_fdi_pl_state_sts, // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 49:16]
  output       io_fdi_pl_rx_active_req, // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 49:16]
  output       io_fdi_pl_inband_pres, // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 49:16]
  output       io_rdi_lp_linkerror, // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 49:16]
  output [3:0] io_rdi_lp_state_req, // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 49:16]
  input  [3:0] io_rdi_pl_state_sts, // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 49:16]
  input        io_rdi_pl_inband_pres, // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 49:16]
  output [5:0] io_sb_snd, // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 49:16]
  input  [5:0] io_sb_rcv, // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 49:16]
  input        io_sb_rdy, // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 49:16]
  output       io_linkmgmt_stallreq, // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 49:16]
  input        io_linkmgmt_stalldone, // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 49:16]
  output       io_parity_rx_enable, // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 49:16]
  output       io_parity_tx_enable // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 49:16]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
`endif // RANDOMIZE_REG_INIT
  wire  disabled_submodule_clock; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 53:36]
  wire  disabled_submodule_reset; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 53:36]
  wire [3:0] disabled_submodule_io_fdi_lp_state_req; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 53:36]
  wire [3:0] disabled_submodule_io_fdi_lp_state_req_prev; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 53:36]
  wire [3:0] disabled_submodule_io_link_state; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 53:36]
  wire  disabled_submodule_io_disabled_entry; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 53:36]
  wire [5:0] disabled_submodule_io_disabled_sb_snd; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 53:36]
  wire [5:0] disabled_submodule_io_disabled_sb_rcv; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 53:36]
  wire  disabled_submodule_io_disabled_sb_rdy; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 53:36]
  wire  linkreset_submodule_clock; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 55:37]
  wire  linkreset_submodule_reset; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 55:37]
  wire [3:0] linkreset_submodule_io_fdi_lp_state_req; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 55:37]
  wire [3:0] linkreset_submodule_io_fdi_lp_state_req_prev; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 55:37]
  wire [3:0] linkreset_submodule_io_link_state; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 55:37]
  wire  linkreset_submodule_io_linkreset_entry; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 55:37]
  wire [5:0] linkreset_submodule_io_linkreset_sb_snd; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 55:37]
  wire [5:0] linkreset_submodule_io_linkreset_sb_rcv; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 55:37]
  wire  linkreset_submodule_io_linkreset_sb_rdy; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 55:37]
  wire  linkinit_submodule_clock; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 57:36]
  wire  linkinit_submodule_reset; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 57:36]
  wire [3:0] linkinit_submodule_io_fdi_lp_state_req; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 57:36]
  wire [3:0] linkinit_submodule_io_fdi_lp_state_req_prev; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 57:36]
  wire  linkinit_submodule_io_fdi_lp_rxactive_sts; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 57:36]
  wire  linkinit_submodule_io_linkinit_fdi_pl_inband_pres; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 57:36]
  wire  linkinit_submodule_io_linkinit_fdi_pl_rxactive_req; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 57:36]
  wire [3:0] linkinit_submodule_io_rdi_pl_state_sts; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 57:36]
  wire  linkinit_submodule_io_rdi_pl_inband_pres; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 57:36]
  wire [3:0] linkinit_submodule_io_linkinit_rdi_lp_state_req; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 57:36]
  wire [3:0] linkinit_submodule_io_link_state; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 57:36]
  wire  linkinit_submodule_io_active_entry; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 57:36]
  wire [5:0] linkinit_submodule_io_linkinit_sb_snd; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 57:36]
  wire [5:0] linkinit_submodule_io_linkinit_sb_rcv; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 57:36]
  wire  linkinit_submodule_io_linkinit_sb_rdy; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 57:36]
  wire  parity_negotiation_submodule_clock; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 59:46]
  wire  parity_negotiation_submodule_reset; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 59:46]
  wire  parity_negotiation_submodule_io_start_negotiation; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 59:46]
  wire [5:0] parity_negotiation_submodule_io_parity_sb_rcv; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 59:46]
  wire [5:0] parity_negotiation_submodule_io_parity_sb_snd; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 59:46]
  wire  parity_negotiation_submodule_io_parity_sb_rdy; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 59:46]
  wire  parity_negotiation_submodule_io_parity_rx_enable; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 59:46]
  wire  parity_negotiation_submodule_io_parity_tx_enable; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 59:46]
  reg  rdi_lp_linkerror_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 63:39]
  reg [3:0] rdi_lp_state_req_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 64:39]
  reg  fdi_pl_rxactive_req_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 66:42]
  reg  fdi_pl_inband_pres_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 67:41]
  reg  linkmgmt_stallreq_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 69:40]
  reg [3:0] fdi_lp_state_req_prev_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 72:44]
  reg [3:0] link_state_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 75:33]
  wire  _parity_negotiation_submodule_io_start_negotiation_T = link_state_reg == 4'hb; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 135:73]
  wire  linkerror_phy_sts = io_rdi_pl_state_sts == 4'ha; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 148:49]
  wire  stallhandler_handshake_done = linkmgmt_stallreq_reg & io_linkmgmt_stalldone; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 153:61]
  wire  rx_deactive = ~io_fdi_lp_rx_active_sts & ~io_fdi_pl_rx_active_req; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 156:50]
  wire  retrain_phy_sts = io_rdi_pl_state_sts == 4'hb; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 160:48]
  wire  _T = link_state_reg == 4'h1; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 169:25]
  wire  _linkmgmt_stallreq_reg_T = linkreset_submodule_io_linkreset_entry | disabled_submodule_io_disabled_entry; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 170:50]
  wire  _linkmgmt_stallreq_reg_T_1 = linkreset_submodule_io_linkreset_entry | disabled_submodule_io_disabled_entry |
    retrain_phy_sts; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 170:68]
  wire  _GEN_0 = link_state_reg == 4'h1 & (linkreset_submodule_io_linkreset_entry | disabled_submodule_io_disabled_entry
     | retrain_phy_sts); // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 169:46 170:31 172:31]
  wire  _T_7 = link_state_reg == 4'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 191:25]
  wire  _T_8 = link_state_reg == 4'ha; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 197:31]
  wire  _T_9 = link_state_reg == 4'hc; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 198:32]
  wire  _T_10 = link_state_reg == 4'ha | _T_9; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 197:54]
  wire  _T_11 = link_state_reg == 4'h9; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 199:32]
  wire  _T_12 = _T_10 | _T_11; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 198:54]
  wire  _T_14 = disabled_submodule_io_disabled_sb_snd != 6'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 216:30]
  wire  _T_15 = linkreset_submodule_io_linkreset_sb_snd != 6'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 219:37]
  wire [5:0] _GEN_8 = linkinit_submodule_io_linkinit_sb_snd != 6'h0 ? linkinit_submodule_io_linkinit_sb_snd : 6'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 222:60 223:23 226:23]
  wire  _GEN_9 = linkinit_submodule_io_linkinit_sb_snd != 6'h0 & io_sb_rdy; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 212:21 222:60 224:29]
  wire [5:0] _GEN_10 = linkreset_submodule_io_linkreset_sb_snd != 6'h0 ? linkreset_submodule_io_linkreset_sb_snd :
    _GEN_8; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 219:61 220:23]
  wire  _GEN_11 = linkreset_submodule_io_linkreset_sb_snd != 6'h0 & io_sb_rdy; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 210:22 219:61 221:30]
  wire  _GEN_12 = linkreset_submodule_io_linkreset_sb_snd != 6'h0 ? 1'h0 : _GEN_9; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 212:21 219:61]
  wire [5:0] _GEN_13 = disabled_submodule_io_disabled_sb_snd != 6'h0 ? disabled_submodule_io_disabled_sb_snd : _GEN_10; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 216:54 217:23]
  wire  _GEN_14 = disabled_submodule_io_disabled_sb_snd != 6'h0 & io_sb_rdy; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 211:21 216:54 218:29]
  wire  _GEN_15 = disabled_submodule_io_disabled_sb_snd != 6'h0 ? 1'h0 : _GEN_11; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 210:22 216:54]
  wire  _GEN_16 = disabled_submodule_io_disabled_sb_snd != 6'h0 ? 1'h0 : _GEN_12; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 212:21 216:54]
  wire [5:0] _GEN_17 = _T_15 ? linkreset_submodule_io_linkreset_sb_snd : 6'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 232:61 233:23 236:23]
  wire [5:0] _GEN_19 = _T_14 ? disabled_submodule_io_disabled_sb_snd : _GEN_17; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 229:54 230:23]
  wire [5:0] _GEN_22 = parity_negotiation_submodule_io_parity_sb_snd != 6'h0 ?
    parity_negotiation_submodule_io_parity_sb_snd : 6'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 245:70 246:23 249:23]
  wire  _GEN_23 = parity_negotiation_submodule_io_parity_sb_snd != 6'h0 & io_sb_rdy; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 213:31 245:70 247:39]
  wire [5:0] _GEN_24 = _T_15 ? linkreset_submodule_io_linkreset_sb_snd : _GEN_22; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 242:61 243:23]
  wire  _GEN_26 = _T_15 ? 1'h0 : _GEN_23; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 213:31 242:61]
  wire [5:0] _GEN_27 = _T_14 ? disabled_submodule_io_disabled_sb_snd : _GEN_24; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 239:54 240:23]
  wire  _GEN_30 = _T_14 ? 1'h0 : _GEN_26; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 213:31 239:54]
  wire [5:0] _GEN_31 = _T_14 ? disabled_submodule_io_disabled_sb_snd : 6'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 252:54 253:23 256:23]
  wire [5:0] _GEN_34 = _T_11 ? _GEN_31 : 6'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 251:54]
  wire  _GEN_35 = _T_11 & _GEN_14; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 211:21 251:54]
  wire [5:0] _GEN_36 = _parity_negotiation_submodule_io_start_negotiation_T ? _GEN_27 : _GEN_34; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 238:52]
  wire  _GEN_37 = _parity_negotiation_submodule_io_start_negotiation_T ? _GEN_14 : _GEN_35; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 238:52]
  wire  _GEN_38 = _parity_negotiation_submodule_io_start_negotiation_T & _GEN_15; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 210:22 238:52]
  wire  _GEN_39 = _parity_negotiation_submodule_io_start_negotiation_T & _GEN_30; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 213:31 238:52]
  wire [5:0] _GEN_40 = _T ? _GEN_19 : _GEN_36; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 228:51]
  wire  _GEN_41 = _T ? _GEN_14 : _GEN_37; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 228:51]
  wire  _GEN_42 = _T ? _GEN_15 : _GEN_38; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 228:51]
  wire  _GEN_43 = _T ? 1'h0 : _GEN_39; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 213:31 228:51]
  wire  _T_33 = io_fdi_lp_state_req == 4'h1; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 275:34]
  wire  _T_35 = io_fdi_lp_state_req == 4'h1 & linkerror_phy_sts; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 275:57]
  wire [3:0] _GEN_51 = _T_33 ? 4'h1 : 4'hc; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 282:58 283:34 285:34]
  wire [3:0] _GEN_52 = _T_33 ? 4'h1 : 4'h9; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 288:58 289:34 291:34]
  wire [3:0] _GEN_53 = _T_11 ? _GEN_52 : rdi_lp_state_req_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 287:55 64:39]
  wire [3:0] _GEN_54 = _T_9 ? _GEN_51 : _GEN_53; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 281:54]
  wire [3:0] _GEN_55 = _T_8 ? {{3'd0}, _T_35} : _GEN_54; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 273:55]
  wire  _T_43 = disabled_submodule_io_disabled_entry & rx_deactive; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 303:39]
  wire  _T_44 = linkreset_submodule_io_linkreset_entry & rx_deactive; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 305:40]
  wire [3:0] _GEN_59 = linkinit_submodule_io_active_entry ? 4'h1 : link_state_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 307:38 308:32 310:32]
  wire [3:0] _GEN_60 = linkreset_submodule_io_linkreset_entry & rx_deactive ? 4'h9 : _GEN_59; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 305:56 306:32]
  wire [3:0] _GEN_63 = retrain_phy_sts & rx_deactive & stallhandler_handshake_done ? 4'hb : link_state_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 321:87 322:32 324:32]
  wire [3:0] _GEN_64 = _T_44 & stallhandler_handshake_done ? 4'h9 : _GEN_63; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 319:87 320:32]
  wire [3:0] _GEN_65 = _T_43 & stallhandler_handshake_done ? 4'hc : _GEN_64; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 317:86 318:32]
  wire [3:0] _GEN_67 = linkreset_submodule_io_linkreset_entry ? 4'h9 : link_state_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 335:41 336:32 338:32]
  wire [3:0] _GEN_68 = disabled_submodule_io_disabled_entry ? 4'hc : _GEN_67; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 333:40 334:32]
  wire [3:0] _GEN_69 = linkerror_phy_sts ? 4'ha : _GEN_68; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 331:37 332:32]
  wire  _T_62 = _T_33 | linkerror_phy_sts; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 345:62]
  wire [3:0] _GEN_70 = _T_62 & rx_deactive ? 4'h0 : link_state_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 346:79 347:36 349:36]
  wire  _T_68 = io_rdi_pl_state_sts == 4'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 357:45]
  wire  _T_69 = _T_33 | _T_68; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 356:67]
  wire [3:0] _GEN_71 = _T_69 ? 4'h0 : link_state_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 357:65 358:32 360:32]
  wire [3:0] _GEN_72 = linkerror_phy_sts ? 4'ha : _GEN_71; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 354:37 355:32]
  wire [3:0] _GEN_74 = _T_43 ? 4'hc : _GEN_71; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 367:55 368:32]
  wire [3:0] _GEN_75 = linkerror_phy_sts ? 4'ha : _GEN_74; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 365:37 366:32]
  wire [3:0] _GEN_76 = 4'h9 == link_state_reg ? _GEN_75 : link_state_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 297:28 75:33]
  wire [3:0] _GEN_77 = 4'hc == link_state_reg ? _GEN_72 : _GEN_76; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 297:28]
  wire [3:0] _GEN_78 = 4'ha == link_state_reg ? _GEN_70 : _GEN_77; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 297:28]
  LinkDisabledSubmodule disabled_submodule ( // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 53:36]
    .clock(disabled_submodule_clock),
    .reset(disabled_submodule_reset),
    .io_fdi_lp_state_req(disabled_submodule_io_fdi_lp_state_req),
    .io_fdi_lp_state_req_prev(disabled_submodule_io_fdi_lp_state_req_prev),
    .io_link_state(disabled_submodule_io_link_state),
    .io_disabled_entry(disabled_submodule_io_disabled_entry),
    .io_disabled_sb_snd(disabled_submodule_io_disabled_sb_snd),
    .io_disabled_sb_rcv(disabled_submodule_io_disabled_sb_rcv),
    .io_disabled_sb_rdy(disabled_submodule_io_disabled_sb_rdy)
  );
  LinkResetSubmodule linkreset_submodule ( // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 55:37]
    .clock(linkreset_submodule_clock),
    .reset(linkreset_submodule_reset),
    .io_fdi_lp_state_req(linkreset_submodule_io_fdi_lp_state_req),
    .io_fdi_lp_state_req_prev(linkreset_submodule_io_fdi_lp_state_req_prev),
    .io_link_state(linkreset_submodule_io_link_state),
    .io_linkreset_entry(linkreset_submodule_io_linkreset_entry),
    .io_linkreset_sb_snd(linkreset_submodule_io_linkreset_sb_snd),
    .io_linkreset_sb_rcv(linkreset_submodule_io_linkreset_sb_rcv),
    .io_linkreset_sb_rdy(linkreset_submodule_io_linkreset_sb_rdy)
  );
  LinkInitSubmodule linkinit_submodule ( // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 57:36]
    .clock(linkinit_submodule_clock),
    .reset(linkinit_submodule_reset),
    .io_fdi_lp_state_req(linkinit_submodule_io_fdi_lp_state_req),
    .io_fdi_lp_state_req_prev(linkinit_submodule_io_fdi_lp_state_req_prev),
    .io_fdi_lp_rxactive_sts(linkinit_submodule_io_fdi_lp_rxactive_sts),
    .io_linkinit_fdi_pl_inband_pres(linkinit_submodule_io_linkinit_fdi_pl_inband_pres),
    .io_linkinit_fdi_pl_rxactive_req(linkinit_submodule_io_linkinit_fdi_pl_rxactive_req),
    .io_rdi_pl_state_sts(linkinit_submodule_io_rdi_pl_state_sts),
    .io_rdi_pl_inband_pres(linkinit_submodule_io_rdi_pl_inband_pres),
    .io_linkinit_rdi_lp_state_req(linkinit_submodule_io_linkinit_rdi_lp_state_req),
    .io_link_state(linkinit_submodule_io_link_state),
    .io_active_entry(linkinit_submodule_io_active_entry),
    .io_linkinit_sb_snd(linkinit_submodule_io_linkinit_sb_snd),
    .io_linkinit_sb_rcv(linkinit_submodule_io_linkinit_sb_rcv),
    .io_linkinit_sb_rdy(linkinit_submodule_io_linkinit_sb_rdy)
  );
  ParityNegotiationSubmodule parity_negotiation_submodule ( // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 59:46]
    .clock(parity_negotiation_submodule_clock),
    .reset(parity_negotiation_submodule_reset),
    .io_start_negotiation(parity_negotiation_submodule_io_start_negotiation),
    .io_parity_sb_rcv(parity_negotiation_submodule_io_parity_sb_rcv),
    .io_parity_sb_snd(parity_negotiation_submodule_io_parity_sb_snd),
    .io_parity_sb_rdy(parity_negotiation_submodule_io_parity_sb_rdy),
    .io_parity_rx_enable(parity_negotiation_submodule_io_parity_rx_enable),
    .io_parity_tx_enable(parity_negotiation_submodule_io_parity_tx_enable)
  );
  assign io_fdi_pl_state_sts = link_state_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 82:25]
  assign io_fdi_pl_rx_active_req = fdi_pl_rxactive_req_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 83:29]
  assign io_fdi_pl_inband_pres = fdi_pl_inband_pres_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 84:27]
  assign io_rdi_lp_linkerror = rdi_lp_linkerror_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 79:25]
  assign io_rdi_lp_state_req = rdi_lp_state_req_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 80:25]
  assign io_sb_snd = _T_7 ? _GEN_13 : _GEN_40; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 215:44]
  assign io_linkmgmt_stallreq = linkmgmt_stallreq_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 86:26]
  assign io_parity_rx_enable = parity_negotiation_submodule_io_parity_rx_enable; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 133:25]
  assign io_parity_tx_enable = parity_negotiation_submodule_io_parity_tx_enable; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 132:25]
  assign disabled_submodule_clock = clock;
  assign disabled_submodule_reset = reset;
  assign disabled_submodule_io_fdi_lp_state_req = io_fdi_lp_state_req; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 93:44]
  assign disabled_submodule_io_fdi_lp_state_req_prev = fdi_lp_state_req_prev_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 94:49]
  assign disabled_submodule_io_link_state = link_state_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 95:38]
  assign disabled_submodule_io_disabled_sb_rcv = io_sb_rcv; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 100:43]
  assign disabled_submodule_io_disabled_sb_rdy = _T_7 ? _GEN_14 : _GEN_41; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 215:44]
  assign linkreset_submodule_clock = clock;
  assign linkreset_submodule_reset = reset;
  assign linkreset_submodule_io_fdi_lp_state_req = io_fdi_lp_state_req; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 104:45]
  assign linkreset_submodule_io_fdi_lp_state_req_prev = fdi_lp_state_req_prev_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 105:50]
  assign linkreset_submodule_io_link_state = link_state_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 106:39]
  assign linkreset_submodule_io_linkreset_sb_rcv = io_sb_rcv; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 111:45]
  assign linkreset_submodule_io_linkreset_sb_rdy = _T_7 ? _GEN_15 : _GEN_42; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 215:44]
  assign linkinit_submodule_clock = clock;
  assign linkinit_submodule_reset = reset;
  assign linkinit_submodule_io_fdi_lp_state_req = io_fdi_lp_state_req; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 115:44]
  assign linkinit_submodule_io_fdi_lp_state_req_prev = fdi_lp_state_req_prev_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 116:49]
  assign linkinit_submodule_io_fdi_lp_rxactive_sts = io_fdi_lp_rx_active_sts; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 117:47]
  assign linkinit_submodule_io_rdi_pl_state_sts = io_rdi_pl_state_sts; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 118:44]
  assign linkinit_submodule_io_rdi_pl_inband_pres = io_rdi_pl_inband_pres; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 119:46]
  assign linkinit_submodule_io_link_state = link_state_reg; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 120:38]
  assign linkinit_submodule_io_linkinit_sb_rcv = io_sb_rcv; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 128:43]
  assign linkinit_submodule_io_linkinit_sb_rdy = _T_7 & _GEN_16; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 212:21 215:44]
  assign parity_negotiation_submodule_clock = clock;
  assign parity_negotiation_submodule_reset = reset;
  assign parity_negotiation_submodule_io_start_negotiation = link_state_reg == 4'hb; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 135:73]
  assign parity_negotiation_submodule_io_parity_sb_rcv = io_sb_rcv; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 137:51]
  assign parity_negotiation_submodule_io_parity_sb_rdy = _T_7 ? 1'h0 : _GEN_43; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 213:31 215:44]
  always @(posedge clock) begin
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 63:39]
      rdi_lp_linkerror_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 63:39]
    end else begin
      rdi_lp_linkerror_reg <= io_fdi_lp_linkerror; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 89:26]
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 64:39]
      rdi_lp_state_req_reg <= 4'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 64:39]
    end else if (_T_7) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 265:45]
      rdi_lp_state_req_reg <= linkinit_submodule_io_linkinit_rdi_lp_state_req; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 266:30]
    end else if (_T) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 267:52]
      if (retrain_phy_sts) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 268:31]
        rdi_lp_state_req_reg <= 4'hb; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 269:34]
      end
    end else if (_parity_negotiation_submodule_io_start_negotiation_T) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 271:53]
      rdi_lp_state_req_reg <= 4'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 272:30]
    end else begin
      rdi_lp_state_req_reg <= _GEN_55;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 66:42]
      fdi_pl_rxactive_req_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 66:42]
    end else if (_T) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 176:45]
      if (_linkmgmt_stallreq_reg_T_1 | linkerror_phy_sts) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 177:88]
        fdi_pl_rxactive_req_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 178:37]
      end else begin
        fdi_pl_rxactive_req_reg <= 1'h1; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 180:37]
      end
    end else if (_linkmgmt_stallreq_reg_T | linkerror_phy_sts) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 183:69]
      fdi_pl_rxactive_req_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 184:37]
    end else begin
      fdi_pl_rxactive_req_reg <= linkinit_submodule_io_linkinit_fdi_pl_rxactive_req; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 186:37]
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 67:41]
      fdi_pl_inband_pres_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 67:41]
    end else if (link_state_reg == 4'h0) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 191:44]
      if (linkerror_phy_sts) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 192:32]
        fdi_pl_inband_pres_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 193:36]
      end else begin
        fdi_pl_inband_pres_reg <= linkinit_submodule_io_linkinit_fdi_pl_inband_pres; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 195:36]
      end
    end else if (_T_12) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 199:55]
      fdi_pl_inband_pres_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 200:32]
    end else if (linkerror_phy_sts) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 202:32]
      fdi_pl_inband_pres_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 203:36]
    end else begin
      fdi_pl_inband_pres_reg <= 1'h1; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 205:36]
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 69:40]
      linkmgmt_stallreq_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 69:40]
    end else begin
      linkmgmt_stallreq_reg <= _GEN_0;
    end
    fdi_lp_state_req_prev_reg <= io_fdi_lp_state_req; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 72:44]
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 75:33]
      link_state_reg <= 4'h0; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 75:33]
    end else if (4'h0 == link_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 297:28]
      if (linkerror_phy_sts) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 300:37]
        link_state_reg <= 4'ha; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 302:32]
      end else if (disabled_submodule_io_disabled_entry & rx_deactive) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 303:55]
        link_state_reg <= 4'hc; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 304:32]
      end else begin
        link_state_reg <= _GEN_60;
      end
    end else if (4'h1 == link_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 297:28]
      if (linkerror_phy_sts) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 315:37]
        link_state_reg <= 4'ha; // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 316:32]
      end else begin
        link_state_reg <= _GEN_65;
      end
    end else if (4'hb == link_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\LinkManagementController.scala 297:28]
      link_state_reg <= _GEN_69;
    end else begin
      link_state_reg <= _GEN_78;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  rdi_lp_linkerror_reg = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  rdi_lp_state_req_reg = _RAND_1[3:0];
  _RAND_2 = {1{`RANDOM}};
  fdi_pl_rxactive_req_reg = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  fdi_pl_inband_pres_reg = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  linkmgmt_stallreq_reg = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  fdi_lp_state_req_prev_reg = _RAND_5[3:0];
  _RAND_6 = {1{`RANDOM}};
  link_state_reg = _RAND_6[3:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module FDIStallHandler(
  input   clock,
  input   reset,
  input   io_linkmgmt_stallreq, // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 27:16]
  output  io_linkmgmt_stalldone, // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 27:16]
  output  io_fdi_pl_stallreq, // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 27:16]
  input   io_fdi_lp_stallack // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 27:16]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg  fdi_lp_stallreq_reg; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 28:38]
  reg  linkmgmt_stalldone_reg; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 29:41]
  reg [1:0] stall_handshake_state_reg; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 34:44]
  wire  _T_3 = ~io_fdi_lp_stallack; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 42:42]
  wire  _T_4 = io_linkmgmt_stallreq & ~io_fdi_lp_stallack; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 42:39]
  wire  _GEN_3 = io_fdi_lp_stallack ? 1'h0 : 1'h1; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 53:37 54:37 58:37]
  wire [1:0] _GEN_8 = _T_3 ? 2'h3 : stall_handshake_state_reg; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 64:38 67:43 71:43]
  wire  _GEN_10 = ~io_linkmgmt_stallreq ? 1'h0 : 1'h1; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 75:40 77:40 81:40]
  wire [1:0] _GEN_11 = ~io_linkmgmt_stallreq ? 2'h0 : stall_handshake_state_reg; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 75:40 78:43 82:43]
  wire  _GEN_13 = 2'h3 == stall_handshake_state_reg ? _GEN_10 : linkmgmt_stalldone_reg; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 38:28 40:38]
  wire [1:0] _GEN_14 = 2'h3 == stall_handshake_state_reg ? _GEN_11 : stall_handshake_state_reg; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 36:31 40:38]
  assign io_linkmgmt_stalldone = linkmgmt_stalldone_reg; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 32:27]
  assign io_fdi_pl_stallreq = fdi_lp_stallreq_reg; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 31:24]
  always @(posedge clock) begin
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 28:38]
      fdi_lp_stallreq_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 28:38]
    end else if (2'h0 == stall_handshake_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 40:38]
      fdi_lp_stallreq_reg <= _T_4;
    end else begin
      fdi_lp_stallreq_reg <= 2'h1 == stall_handshake_state_reg & _GEN_3;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 29:41]
      linkmgmt_stalldone_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 29:41]
    end else if (2'h0 == stall_handshake_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 40:38]
      linkmgmt_stalldone_reg <= 1'h0;
    end else if (2'h1 == stall_handshake_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 40:38]
      linkmgmt_stalldone_reg <= 1'h0;
    end else if (2'h2 == stall_handshake_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 40:38]
      linkmgmt_stalldone_reg <= _T_3;
    end else begin
      linkmgmt_stalldone_reg <= _GEN_13;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 34:44]
      stall_handshake_state_reg <= 2'h0; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 34:44]
    end else if (2'h0 == stall_handshake_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 40:38]
      if (io_linkmgmt_stallreq & ~io_fdi_lp_stallack) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 42:62]
        stall_handshake_state_reg <= 2'h1; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 45:43]
      end
    end else if (2'h1 == stall_handshake_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 40:38]
      if (io_fdi_lp_stallack) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 53:37]
        stall_handshake_state_reg <= 2'h2; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 56:43]
      end
    end else if (2'h2 == stall_handshake_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 40:38]
      stall_handshake_state_reg <= _GEN_8;
    end else begin
      stall_handshake_state_reg <= _GEN_14;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  fdi_lp_stallreq_reg = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  linkmgmt_stalldone_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  stall_handshake_state_reg = _RAND_2[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module RDIStallHandler(
  input   clock,
  input   reset,
  output  io_mainband_stallreq, // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 90:16]
  input   io_mainband_stalldone, // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 90:16]
  input   io_rdi_pl_stallreq, // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 90:16]
  output  io_rdi_lp_stallack // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 90:16]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg  rdi_lp_stallack_reg; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 92:38]
  reg  mainband_stallreq_reg; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 93:40]
  reg [1:0] stall_handshake_state_reg; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 94:44]
  wire  _GEN_6 = ~io_rdi_pl_stallreq ? 1'h0 : 1'h1; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 123:38 124:39 128:39]
  wire [1:0] _GEN_7 = ~io_rdi_pl_stallreq ? 2'h0 : stall_handshake_state_reg; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 123:38 126:43 130:43]
  wire  _GEN_8 = 2'h2 == stall_handshake_state_reg ? _GEN_6 : mainband_stallreq_reg; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 99:38 93:40]
  assign io_mainband_stallreq = mainband_stallreq_reg; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 97:26]
  assign io_rdi_lp_stallack = rdi_lp_stallack_reg; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 96:24]
  always @(posedge clock) begin
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 92:38]
      rdi_lp_stallack_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 92:38]
    end else if (2'h0 == stall_handshake_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 99:38]
      rdi_lp_stallack_reg <= 1'h0;
    end else if (2'h1 == stall_handshake_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 99:38]
      rdi_lp_stallack_reg <= io_mainband_stalldone;
    end else if (2'h2 == stall_handshake_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 99:38]
      rdi_lp_stallack_reg <= _GEN_6;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 93:40]
      mainband_stallreq_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 93:40]
    end else if (2'h0 == stall_handshake_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 99:38]
      mainband_stallreq_reg <= io_rdi_pl_stallreq;
    end else begin
      mainband_stallreq_reg <= 2'h1 == stall_handshake_state_reg | _GEN_8;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 94:44]
      stall_handshake_state_reg <= 2'h0; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 94:44]
    end else if (2'h0 == stall_handshake_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 99:38]
      if (io_rdi_pl_stallreq) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 101:37]
        stall_handshake_state_reg <= 2'h1; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 104:43]
      end
    end else if (2'h1 == stall_handshake_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 99:38]
      if (io_mainband_stalldone) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 112:40]
        stall_handshake_state_reg <= 2'h2; // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 115:43]
      end
    end else if (2'h2 == stall_handshake_state_reg) begin // @[\\src\\main\\scala\\d2dadapter\\StallHandler.scala 99:38]
      stall_handshake_state_reg <= _GEN_7;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  rdi_lp_stallack_reg = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  mainband_stallreq_reg = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  stall_handshake_state_reg = _RAND_2[1:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SidebandSerializer(
  input          clock,
  input          reset,
  output         io_in_ready, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 164:14]
  input          io_in_valid, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 164:14]
  input  [127:0] io_in_bits, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 164:14]
  output [127:0] io_out_bits, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 164:14]
  output         io_out_valid, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 164:14]
  input          io_out_credit // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 164:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [127:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg [127:0] data; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 175:17]
  reg  sending; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 177:24]
  reg [5:0] current_credit; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 180:31]
  reg  isComplete; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 181:27]
  wire [127:0] _io_in_ready_T_1 = io_in_bits & 128'h1f; // @[\\src\\main\\scala\\sideband\\sb-msg-encoding.scala 368:31]
  wire  _io_in_ready_T_8 = 128'h10 == _io_in_ready_T_1 | 128'h11 == _io_in_ready_T_1 | 128'h19 == _io_in_ready_T_1; // @[\\src\\main\\scala\\sideband\\sb-msg-encoding.scala 368:58]
  wire  _io_in_ready_T_9 = current_credit > 6'h0; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 185:24]
  wire  _io_in_ready_T_10 = _io_in_ready_T_8 | current_credit > 6'h0; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 185:5]
  wire  _T = io_in_ready & io_in_valid; // @[src/main/scala/chisel3/util/Decoupled.scala 52:35]
  wire  _GEN_2 = _T | sending; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 189:20 191:13 177:24]
  wire [5:0] _current_credit_T_1 = current_credit - 6'h1; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 199:69]
  wire [5:0] _current_credit_T_3 = current_credit + 6'h1; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 202:58]
  assign io_in_ready = ~sending & _io_in_ready_T_10; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 183:28]
  assign io_out_bits = data; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 187:22]
  assign io_out_valid = (_io_in_ready_T_9 | isComplete) & sending; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 186:59]
  always @(posedge clock) begin
    if (io_out_valid) begin // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 195:22]
      data <= 128'h0; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 195:29]
    end else if (_T) begin // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 189:20]
      data <= io_in_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 190:10]
    end
    if (reset) begin // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 177:24]
      sending <= 1'h0; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 177:24]
    end else if (io_out_valid) begin // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 197:18]
      sending <= 1'h0; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 198:13]
    end else begin
      sending <= _GEN_2;
    end
    if (reset) begin // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 180:31]
      current_credit <= 6'h20; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 180:31]
    end else if (io_out_credit) begin // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 202:23]
      current_credit <= _current_credit_T_3; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 202:40]
    end else if (io_out_valid) begin // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 197:18]
      if (~isComplete) begin // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 199:34]
        current_credit <= _current_credit_T_1; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 199:51]
      end
    end
    if (reset) begin // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 181:27]
      isComplete <= 1'h0; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 181:27]
    end else if (_T) begin // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 189:20]
      isComplete <= _io_in_ready_T_8; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 192:16]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {4{`RANDOM}};
  data = _RAND_0[127:0];
  _RAND_1 = {1{`RANDOM}};
  sending = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  current_credit = _RAND_2[5:0];
  _RAND_3 = {1{`RANDOM}};
  isComplete = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Queue(
  input          clock,
  input          reset,
  output         io_enq_ready, // @[src/main/scala/chisel3/util/Decoupled.scala 273:14]
  input          io_enq_valid, // @[src/main/scala/chisel3/util/Decoupled.scala 273:14]
  input  [127:0] io_enq_bits, // @[src/main/scala/chisel3/util/Decoupled.scala 273:14]
  input          io_deq_ready, // @[src/main/scala/chisel3/util/Decoupled.scala 273:14]
  output         io_deq_valid, // @[src/main/scala/chisel3/util/Decoupled.scala 273:14]
  output [127:0] io_deq_bits // @[src/main/scala/chisel3/util/Decoupled.scala 273:14]
);
`ifdef RANDOMIZE_MEM_INIT
  reg [127:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg [127:0] ram [0:3]; // @[src/main/scala/chisel3/util/Decoupled.scala 274:95]
  wire  ram_io_deq_bits_MPORT_en; // @[src/main/scala/chisel3/util/Decoupled.scala 274:95]
  wire [1:0] ram_io_deq_bits_MPORT_addr; // @[src/main/scala/chisel3/util/Decoupled.scala 274:95]
  wire [127:0] ram_io_deq_bits_MPORT_data; // @[src/main/scala/chisel3/util/Decoupled.scala 274:95]
  wire [127:0] ram_MPORT_data; // @[src/main/scala/chisel3/util/Decoupled.scala 274:95]
  wire [1:0] ram_MPORT_addr; // @[src/main/scala/chisel3/util/Decoupled.scala 274:95]
  wire  ram_MPORT_mask; // @[src/main/scala/chisel3/util/Decoupled.scala 274:95]
  wire  ram_MPORT_en; // @[src/main/scala/chisel3/util/Decoupled.scala 274:95]
  reg [1:0] enq_ptr_value; // @[src/main/scala/chisel3/util/Counter.scala 61:40]
  reg [1:0] deq_ptr_value; // @[src/main/scala/chisel3/util/Counter.scala 61:40]
  reg  maybe_full; // @[src/main/scala/chisel3/util/Decoupled.scala 277:27]
  wire  ptr_match = enq_ptr_value == deq_ptr_value; // @[src/main/scala/chisel3/util/Decoupled.scala 278:33]
  wire  empty = ptr_match & ~maybe_full; // @[src/main/scala/chisel3/util/Decoupled.scala 279:25]
  wire  full = ptr_match & maybe_full; // @[src/main/scala/chisel3/util/Decoupled.scala 280:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[src/main/scala/chisel3/util/Decoupled.scala 52:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[src/main/scala/chisel3/util/Decoupled.scala 52:35]
  wire [1:0] _value_T_1 = enq_ptr_value + 2'h1; // @[src/main/scala/chisel3/util/Counter.scala 77:24]
  wire [1:0] _value_T_3 = deq_ptr_value + 2'h1; // @[src/main/scala/chisel3/util/Counter.scala 77:24]
  assign ram_io_deq_bits_MPORT_en = 1'h1;
  assign ram_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_io_deq_bits_MPORT_data = ram[ram_io_deq_bits_MPORT_addr]; // @[src/main/scala/chisel3/util/Decoupled.scala 274:95]
  assign ram_MPORT_data = io_enq_bits;
  assign ram_MPORT_addr = enq_ptr_value;
  assign ram_MPORT_mask = 1'h1;
  assign ram_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[src/main/scala/chisel3/util/Decoupled.scala 304:19]
  assign io_deq_valid = ~empty; // @[src/main/scala/chisel3/util/Decoupled.scala 303:19]
  assign io_deq_bits = ram_io_deq_bits_MPORT_data; // @[src/main/scala/chisel3/util/Decoupled.scala 311:17]
  always @(posedge clock) begin
    if (ram_MPORT_en & ram_MPORT_mask) begin
      ram[ram_MPORT_addr] <= ram_MPORT_data; // @[src/main/scala/chisel3/util/Decoupled.scala 274:95]
    end
    if (reset) begin // @[src/main/scala/chisel3/util/Counter.scala 61:40]
      enq_ptr_value <= 2'h0; // @[src/main/scala/chisel3/util/Counter.scala 61:40]
    end else if (do_enq) begin // @[src/main/scala/chisel3/util/Decoupled.scala 287:16]
      enq_ptr_value <= _value_T_1; // @[src/main/scala/chisel3/util/Counter.scala 77:15]
    end
    if (reset) begin // @[src/main/scala/chisel3/util/Counter.scala 61:40]
      deq_ptr_value <= 2'h0; // @[src/main/scala/chisel3/util/Counter.scala 61:40]
    end else if (do_deq) begin // @[src/main/scala/chisel3/util/Decoupled.scala 291:16]
      deq_ptr_value <= _value_T_3; // @[src/main/scala/chisel3/util/Counter.scala 77:15]
    end
    if (reset) begin // @[src/main/scala/chisel3/util/Decoupled.scala 277:27]
      maybe_full <= 1'h0; // @[src/main/scala/chisel3/util/Decoupled.scala 277:27]
    end else if (do_enq != do_deq) begin // @[src/main/scala/chisel3/util/Decoupled.scala 294:27]
      maybe_full <= do_enq; // @[src/main/scala/chisel3/util/Decoupled.scala 295:16]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {4{`RANDOM}};
  for (initvar = 0; initvar < 4; initvar = initvar+1)
    ram[initvar] = _RAND_0[127:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  enq_ptr_value = _RAND_1[1:0];
  _RAND_2 = {1{`RANDOM}};
  deq_ptr_value = _RAND_2[1:0];
  _RAND_3 = {1{`RANDOM}};
  maybe_full = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module Queue_1(
  input          clock,
  input          reset,
  output         io_enq_ready, // @[src/main/scala/chisel3/util/Decoupled.scala 273:14]
  input          io_enq_valid, // @[src/main/scala/chisel3/util/Decoupled.scala 273:14]
  input  [127:0] io_enq_bits, // @[src/main/scala/chisel3/util/Decoupled.scala 273:14]
  input          io_deq_ready, // @[src/main/scala/chisel3/util/Decoupled.scala 273:14]
  output         io_deq_valid, // @[src/main/scala/chisel3/util/Decoupled.scala 273:14]
  output [127:0] io_deq_bits // @[src/main/scala/chisel3/util/Decoupled.scala 273:14]
);
`ifdef RANDOMIZE_MEM_INIT
  reg [127:0] _RAND_0;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
`endif // RANDOMIZE_REG_INIT
  reg [127:0] ram [0:31]; // @[src/main/scala/chisel3/util/Decoupled.scala 274:95]
  wire  ram_io_deq_bits_MPORT_en; // @[src/main/scala/chisel3/util/Decoupled.scala 274:95]
  wire [4:0] ram_io_deq_bits_MPORT_addr; // @[src/main/scala/chisel3/util/Decoupled.scala 274:95]
  wire [127:0] ram_io_deq_bits_MPORT_data; // @[src/main/scala/chisel3/util/Decoupled.scala 274:95]
  wire [127:0] ram_MPORT_data; // @[src/main/scala/chisel3/util/Decoupled.scala 274:95]
  wire [4:0] ram_MPORT_addr; // @[src/main/scala/chisel3/util/Decoupled.scala 274:95]
  wire  ram_MPORT_mask; // @[src/main/scala/chisel3/util/Decoupled.scala 274:95]
  wire  ram_MPORT_en; // @[src/main/scala/chisel3/util/Decoupled.scala 274:95]
  reg [4:0] enq_ptr_value; // @[src/main/scala/chisel3/util/Counter.scala 61:40]
  reg [4:0] deq_ptr_value; // @[src/main/scala/chisel3/util/Counter.scala 61:40]
  reg  maybe_full; // @[src/main/scala/chisel3/util/Decoupled.scala 277:27]
  wire  ptr_match = enq_ptr_value == deq_ptr_value; // @[src/main/scala/chisel3/util/Decoupled.scala 278:33]
  wire  empty = ptr_match & ~maybe_full; // @[src/main/scala/chisel3/util/Decoupled.scala 279:25]
  wire  full = ptr_match & maybe_full; // @[src/main/scala/chisel3/util/Decoupled.scala 280:24]
  wire  do_enq = io_enq_ready & io_enq_valid; // @[src/main/scala/chisel3/util/Decoupled.scala 52:35]
  wire  do_deq = io_deq_ready & io_deq_valid; // @[src/main/scala/chisel3/util/Decoupled.scala 52:35]
  wire [4:0] _value_T_1 = enq_ptr_value + 5'h1; // @[src/main/scala/chisel3/util/Counter.scala 77:24]
  wire [4:0] _value_T_3 = deq_ptr_value + 5'h1; // @[src/main/scala/chisel3/util/Counter.scala 77:24]
  assign ram_io_deq_bits_MPORT_en = 1'h1;
  assign ram_io_deq_bits_MPORT_addr = deq_ptr_value;
  assign ram_io_deq_bits_MPORT_data = ram[ram_io_deq_bits_MPORT_addr]; // @[src/main/scala/chisel3/util/Decoupled.scala 274:95]
  assign ram_MPORT_data = io_enq_bits;
  assign ram_MPORT_addr = enq_ptr_value;
  assign ram_MPORT_mask = 1'h1;
  assign ram_MPORT_en = io_enq_ready & io_enq_valid;
  assign io_enq_ready = ~full; // @[src/main/scala/chisel3/util/Decoupled.scala 304:19]
  assign io_deq_valid = ~empty; // @[src/main/scala/chisel3/util/Decoupled.scala 303:19]
  assign io_deq_bits = ram_io_deq_bits_MPORT_data; // @[src/main/scala/chisel3/util/Decoupled.scala 311:17]
  always @(posedge clock) begin
    if (ram_MPORT_en & ram_MPORT_mask) begin
      ram[ram_MPORT_addr] <= ram_MPORT_data; // @[src/main/scala/chisel3/util/Decoupled.scala 274:95]
    end
    if (reset) begin // @[src/main/scala/chisel3/util/Counter.scala 61:40]
      enq_ptr_value <= 5'h0; // @[src/main/scala/chisel3/util/Counter.scala 61:40]
    end else if (do_enq) begin // @[src/main/scala/chisel3/util/Decoupled.scala 287:16]
      enq_ptr_value <= _value_T_1; // @[src/main/scala/chisel3/util/Counter.scala 77:15]
    end
    if (reset) begin // @[src/main/scala/chisel3/util/Counter.scala 61:40]
      deq_ptr_value <= 5'h0; // @[src/main/scala/chisel3/util/Counter.scala 61:40]
    end else if (do_deq) begin // @[src/main/scala/chisel3/util/Decoupled.scala 291:16]
      deq_ptr_value <= _value_T_3; // @[src/main/scala/chisel3/util/Counter.scala 77:15]
    end
    if (reset) begin // @[src/main/scala/chisel3/util/Decoupled.scala 277:27]
      maybe_full <= 1'h0; // @[src/main/scala/chisel3/util/Decoupled.scala 277:27]
    end else if (do_enq != do_deq) begin // @[src/main/scala/chisel3/util/Decoupled.scala 294:27]
      maybe_full <= do_enq; // @[src/main/scala/chisel3/util/Decoupled.scala 295:16]
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_MEM_INIT
  _RAND_0 = {4{`RANDOM}};
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    ram[initvar] = _RAND_0[127:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  enq_ptr_value = _RAND_1[4:0];
  _RAND_2 = {1{`RANDOM}};
  deq_ptr_value = _RAND_2[4:0];
  _RAND_3 = {1{`RANDOM}};
  maybe_full = _RAND_3[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SidebandEnqArbiter(
  output         io_out_0_valid, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 115:14]
  output [127:0] io_out_0_bits, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 115:14]
  output         io_out_1_valid, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 115:14]
  output [127:0] io_out_1_bits, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 115:14]
  output         io_out_2_valid, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 115:14]
  output [127:0] io_out_2_bits, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 115:14]
  input          io_in_valid, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 115:14]
  input  [127:0] io_in_bits // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 115:14]
);
  wire [127:0] _io_out_0_valid_T = io_in_bits & 128'h1f; // @[\\src\\main\\scala\\sideband\\sb-msg-encoding.scala 368:31]
  wire  _io_out_0_valid_T_7 = 128'h10 == _io_out_0_valid_T | 128'h11 == _io_out_0_valid_T | 128'h19 == _io_out_0_valid_T
    ; // @[\\src\\main\\scala\\sideband\\sb-msg-encoding.scala 368:58]
  wire  _io_out_1_valid_T_4 = 128'h12 == _io_out_0_valid_T | 128'h1b == _io_out_0_valid_T; // @[\\src\\main\\scala\\sideband\\sb-msg-encoding.scala 369:40]
  wire  _io_out_2_valid_T_1 = ~io_in_bits[4]; // @[\\src\\main\\scala\\sideband\\sb-msg-encoding.scala 370:28]
  assign io_out_0_valid = io_in_valid & _io_out_0_valid_T_7; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 125:34]
  assign io_out_0_bits = io_in_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 120:38]
  assign io_out_1_valid = io_in_valid & _io_out_1_valid_T_4; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 126:34]
  assign io_out_1_bits = io_in_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 120:38]
  assign io_out_2_valid = io_in_valid & _io_out_2_valid_T_1; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 127:34]
  assign io_out_2_bits = io_in_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 120:38]
endmodule
module SidebandDeqArbiter(
  input          io_out_ready, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 131:14]
  output         io_out_valid, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 131:14]
  output [127:0] io_out_bits, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 131:14]
  output         io_in_0_ready, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 131:14]
  input          io_in_0_valid, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 131:14]
  input  [127:0] io_in_0_bits, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 131:14]
  output         io_in_1_ready, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 131:14]
  input          io_in_1_valid, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 131:14]
  input  [127:0] io_in_1_bits, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 131:14]
  output         io_in_2_ready, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 131:14]
  input          io_in_2_valid, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 131:14]
  input  [127:0] io_in_2_bits // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 131:14]
);
  wire  _GEN_1 = io_in_2_valid & io_out_ready; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 148:30 150:22 154:40]
  wire [127:0] _GEN_2 = io_in_2_valid ? io_in_2_bits : io_in_0_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 148:30 152:17 155:17]
  wire  _GEN_4 = io_in_1_valid & io_out_ready; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 143:30 145:22]
  wire  _GEN_5 = io_in_1_valid ? 1'h0 : _GEN_1; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 143:30 145:22]
  wire [127:0] _GEN_6 = io_in_1_valid ? io_in_1_bits : _GEN_2; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 143:30 147:17]
  assign io_out_valid = io_in_0_valid | io_in_1_valid | io_in_2_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 136:52]
  assign io_out_bits = io_in_0_valid ? io_in_0_bits : _GEN_6; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 138:24 142:17]
  assign io_in_0_ready = io_in_0_valid & io_out_ready; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 138:24 140:22]
  assign io_in_1_ready = io_in_0_valid ? 1'h0 : _GEN_4; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 138:24 140:22]
  assign io_in_2_ready = io_in_0_valid ? 1'h0 : _GEN_5; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 138:24 140:22]
endmodule
module SidebandPriorityQueue(
  input          clock,
  input          reset,
  input          io_enq_valid, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 85:14]
  input  [127:0] io_enq_bits, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 85:14]
  input          io_deq_ready, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 85:14]
  output         io_deq_valid, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 85:14]
  output [127:0] io_deq_bits // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 85:14]
);
  wire  p0_queue_clock; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 90:24]
  wire  p0_queue_reset; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 90:24]
  wire  p0_queue_io_enq_ready; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 90:24]
  wire  p0_queue_io_enq_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 90:24]
  wire [127:0] p0_queue_io_enq_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 90:24]
  wire  p0_queue_io_deq_ready; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 90:24]
  wire  p0_queue_io_deq_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 90:24]
  wire [127:0] p0_queue_io_deq_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 90:24]
  wire  p1_queue_clock; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 93:24]
  wire  p1_queue_reset; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 93:24]
  wire  p1_queue_io_enq_ready; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 93:24]
  wire  p1_queue_io_enq_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 93:24]
  wire [127:0] p1_queue_io_enq_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 93:24]
  wire  p1_queue_io_deq_ready; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 93:24]
  wire  p1_queue_io_deq_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 93:24]
  wire [127:0] p1_queue_io_deq_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 93:24]
  wire  p2_queue_clock; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 96:24]
  wire  p2_queue_reset; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 96:24]
  wire  p2_queue_io_enq_ready; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 96:24]
  wire  p2_queue_io_enq_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 96:24]
  wire [127:0] p2_queue_io_enq_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 96:24]
  wire  p2_queue_io_deq_ready; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 96:24]
  wire  p2_queue_io_deq_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 96:24]
  wire [127:0] p2_queue_io_deq_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 96:24]
  wire  enq_arb_io_out_0_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 100:23]
  wire [127:0] enq_arb_io_out_0_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 100:23]
  wire  enq_arb_io_out_1_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 100:23]
  wire [127:0] enq_arb_io_out_1_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 100:23]
  wire  enq_arb_io_out_2_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 100:23]
  wire [127:0] enq_arb_io_out_2_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 100:23]
  wire  enq_arb_io_in_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 100:23]
  wire [127:0] enq_arb_io_in_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 100:23]
  wire  deq_arb_io_out_ready; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 101:23]
  wire  deq_arb_io_out_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 101:23]
  wire [127:0] deq_arb_io_out_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 101:23]
  wire  deq_arb_io_in_0_ready; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 101:23]
  wire  deq_arb_io_in_0_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 101:23]
  wire [127:0] deq_arb_io_in_0_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 101:23]
  wire  deq_arb_io_in_1_ready; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 101:23]
  wire  deq_arb_io_in_1_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 101:23]
  wire [127:0] deq_arb_io_in_1_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 101:23]
  wire  deq_arb_io_in_2_ready; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 101:23]
  wire  deq_arb_io_in_2_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 101:23]
  wire [127:0] deq_arb_io_in_2_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 101:23]
  Queue p0_queue ( // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 90:24]
    .clock(p0_queue_clock),
    .reset(p0_queue_reset),
    .io_enq_ready(p0_queue_io_enq_ready),
    .io_enq_valid(p0_queue_io_enq_valid),
    .io_enq_bits(p0_queue_io_enq_bits),
    .io_deq_ready(p0_queue_io_deq_ready),
    .io_deq_valid(p0_queue_io_deq_valid),
    .io_deq_bits(p0_queue_io_deq_bits)
  );
  Queue_1 p1_queue ( // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 93:24]
    .clock(p1_queue_clock),
    .reset(p1_queue_reset),
    .io_enq_ready(p1_queue_io_enq_ready),
    .io_enq_valid(p1_queue_io_enq_valid),
    .io_enq_bits(p1_queue_io_enq_bits),
    .io_deq_ready(p1_queue_io_deq_ready),
    .io_deq_valid(p1_queue_io_deq_valid),
    .io_deq_bits(p1_queue_io_deq_bits)
  );
  Queue_1 p2_queue ( // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 96:24]
    .clock(p2_queue_clock),
    .reset(p2_queue_reset),
    .io_enq_ready(p2_queue_io_enq_ready),
    .io_enq_valid(p2_queue_io_enq_valid),
    .io_enq_bits(p2_queue_io_enq_bits),
    .io_deq_ready(p2_queue_io_deq_ready),
    .io_deq_valid(p2_queue_io_deq_valid),
    .io_deq_bits(p2_queue_io_deq_bits)
  );
  SidebandEnqArbiter enq_arb ( // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 100:23]
    .io_out_0_valid(enq_arb_io_out_0_valid),
    .io_out_0_bits(enq_arb_io_out_0_bits),
    .io_out_1_valid(enq_arb_io_out_1_valid),
    .io_out_1_bits(enq_arb_io_out_1_bits),
    .io_out_2_valid(enq_arb_io_out_2_valid),
    .io_out_2_bits(enq_arb_io_out_2_bits),
    .io_in_valid(enq_arb_io_in_valid),
    .io_in_bits(enq_arb_io_in_bits)
  );
  SidebandDeqArbiter deq_arb ( // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 101:23]
    .io_out_ready(deq_arb_io_out_ready),
    .io_out_valid(deq_arb_io_out_valid),
    .io_out_bits(deq_arb_io_out_bits),
    .io_in_0_ready(deq_arb_io_in_0_ready),
    .io_in_0_valid(deq_arb_io_in_0_valid),
    .io_in_0_bits(deq_arb_io_in_0_bits),
    .io_in_1_ready(deq_arb_io_in_1_ready),
    .io_in_1_valid(deq_arb_io_in_1_valid),
    .io_in_1_bits(deq_arb_io_in_1_bits),
    .io_in_2_ready(deq_arb_io_in_2_ready),
    .io_in_2_valid(deq_arb_io_in_2_valid),
    .io_in_2_bits(deq_arb_io_in_2_bits)
  );
  assign io_deq_valid = deq_arb_io_out_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 111:18]
  assign io_deq_bits = deq_arb_io_out_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 111:18]
  assign p0_queue_clock = clock;
  assign p0_queue_reset = reset;
  assign p0_queue_io_enq_valid = enq_arb_io_out_0_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 104:21]
  assign p0_queue_io_enq_bits = enq_arb_io_out_0_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 104:21]
  assign p0_queue_io_deq_ready = deq_arb_io_in_0_ready; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 108:20]
  assign p1_queue_clock = clock;
  assign p1_queue_reset = reset;
  assign p1_queue_io_enq_valid = enq_arb_io_out_1_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 105:21]
  assign p1_queue_io_enq_bits = enq_arb_io_out_1_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 105:21]
  assign p1_queue_io_deq_ready = deq_arb_io_in_1_ready; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 109:20]
  assign p2_queue_clock = clock;
  assign p2_queue_reset = reset;
  assign p2_queue_io_enq_valid = enq_arb_io_out_2_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 106:21]
  assign p2_queue_io_enq_bits = enq_arb_io_out_2_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 106:21]
  assign p2_queue_io_deq_ready = deq_arb_io_in_2_ready; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 110:20]
  assign enq_arb_io_in_valid = io_enq_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 103:17]
  assign enq_arb_io_in_bits = io_enq_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 103:17]
  assign deq_arb_io_out_ready = io_deq_ready; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 111:18]
  assign deq_arb_io_in_0_valid = p0_queue_io_deq_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 108:20]
  assign deq_arb_io_in_0_bits = p0_queue_io_deq_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 108:20]
  assign deq_arb_io_in_1_valid = p1_queue_io_deq_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 109:20]
  assign deq_arb_io_in_1_bits = p1_queue_io_deq_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 109:20]
  assign deq_arb_io_in_2_valid = p2_queue_io_deq_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 110:20]
  assign deq_arb_io_in_2_bits = p2_queue_io_deq_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 110:20]
endmodule
module SidebandDeserializer(
  input          clock,
  input          reset,
  input  [127:0] io_in_bits, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 211:14]
  input          io_in_valid, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 211:14]
  output         io_out_valid, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 211:14]
  output [127:0] io_out_bits // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 211:14]
);
`ifdef RANDOMIZE_REG_INIT
  reg [127:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_REG_INIT
  reg [127:0] data_0; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 221:17]
  reg  receiving; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 223:26]
  wire  _GEN_2 = io_in_valid ? 1'h0 : receiving; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 233:18 223:26 233:30]
  wire  _GEN_3 = io_out_valid | _GEN_2; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 235:{21,33}]
  assign io_out_valid = ~receiving; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 226:19]
  assign io_out_bits = data_0; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 227:15]
  always @(posedge clock) begin
    if (io_in_valid) begin // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 229:21]
      data_0 <= io_in_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 230:21]
    end
    receiving <= reset | _GEN_3; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 223:{26,26}]
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {4{`RANDOM}};
  data_0 = _RAND_0[127:0];
  _RAND_1 = {1{`RANDOM}};
  receiving = _RAND_1[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module SidebandNode(
  input          clock,
  input          reset,
  output         io_inner_layer_to_node_ready, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 58:14]
  input          io_inner_layer_to_node_valid, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 58:14]
  input  [127:0] io_inner_layer_to_node_bits, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 58:14]
  input          io_inner_node_to_layer_ready, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 58:14]
  output         io_inner_node_to_layer_valid, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 58:14]
  output [127:0] io_inner_node_to_layer_bits, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 58:14]
  output [127:0] io_outer_tx_bits, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 58:14]
  output         io_outer_tx_valid, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 58:14]
  input          io_outer_tx_credit, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 58:14]
  input  [127:0] io_outer_rx_bits, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 58:14]
  input          io_outer_rx_valid, // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 58:14]
  output         io_outer_rx_credit // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 58:14]
);
  wire  tx_ser_clock; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 60:22]
  wire  tx_ser_reset; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 60:22]
  wire  tx_ser_io_in_ready; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 60:22]
  wire  tx_ser_io_in_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 60:22]
  wire [127:0] tx_ser_io_in_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 60:22]
  wire [127:0] tx_ser_io_out_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 60:22]
  wire  tx_ser_io_out_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 60:22]
  wire  tx_ser_io_out_credit; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 60:22]
  wire  rx_queue_clock; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 61:24]
  wire  rx_queue_reset; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 61:24]
  wire  rx_queue_io_enq_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 61:24]
  wire [127:0] rx_queue_io_enq_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 61:24]
  wire  rx_queue_io_deq_ready; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 61:24]
  wire  rx_queue_io_deq_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 61:24]
  wire [127:0] rx_queue_io_deq_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 61:24]
  wire  rx_des_clock; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 62:22]
  wire  rx_des_reset; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 62:22]
  wire [127:0] rx_des_io_in_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 62:22]
  wire  rx_des_io_in_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 62:22]
  wire  rx_des_io_out_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 62:22]
  wire [127:0] rx_des_io_out_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 62:22]
  wire  _io_outer_rx_credit_T = rx_queue_io_deq_ready & rx_queue_io_deq_valid; // @[src/main/scala/chisel3/util/Decoupled.scala 52:35]
  wire [127:0] _io_outer_rx_credit_T_1 = rx_queue_io_deq_bits & 128'h1f; // @[\\src\\main\\scala\\sideband\\sb-msg-encoding.scala 368:31]
  wire  _io_outer_rx_credit_T_8 = 128'h10 == _io_outer_rx_credit_T_1 | 128'h11 == _io_outer_rx_credit_T_1 | 128'h19 ==
    _io_outer_rx_credit_T_1; // @[\\src\\main\\scala\\sideband\\sb-msg-encoding.scala 368:58]
  SidebandSerializer tx_ser ( // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 60:22]
    .clock(tx_ser_clock),
    .reset(tx_ser_reset),
    .io_in_ready(tx_ser_io_in_ready),
    .io_in_valid(tx_ser_io_in_valid),
    .io_in_bits(tx_ser_io_in_bits),
    .io_out_bits(tx_ser_io_out_bits),
    .io_out_valid(tx_ser_io_out_valid),
    .io_out_credit(tx_ser_io_out_credit)
  );
  SidebandPriorityQueue rx_queue ( // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 61:24]
    .clock(rx_queue_clock),
    .reset(rx_queue_reset),
    .io_enq_valid(rx_queue_io_enq_valid),
    .io_enq_bits(rx_queue_io_enq_bits),
    .io_deq_ready(rx_queue_io_deq_ready),
    .io_deq_valid(rx_queue_io_deq_valid),
    .io_deq_bits(rx_queue_io_deq_bits)
  );
  SidebandDeserializer rx_des ( // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 62:22]
    .clock(rx_des_clock),
    .reset(rx_des_reset),
    .io_in_bits(rx_des_io_in_bits),
    .io_in_valid(rx_des_io_in_valid),
    .io_out_valid(rx_des_io_out_valid),
    .io_out_bits(rx_des_io_out_bits)
  );
  assign io_inner_layer_to_node_ready = tx_ser_io_in_ready; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 76:32]
  assign io_inner_node_to_layer_valid = rx_queue_io_deq_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 81:26]
  assign io_inner_node_to_layer_bits = rx_queue_io_deq_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 81:26]
  assign io_outer_tx_bits = tx_ser_io_out_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 65:15]
  assign io_outer_tx_valid = tx_ser_io_out_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 65:15]
  assign io_outer_rx_credit = _io_outer_rx_credit_T & ~_io_outer_rx_credit_T_8; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 68:46]
  assign tx_ser_clock = clock;
  assign tx_ser_reset = reset;
  assign tx_ser_io_in_valid = io_inner_layer_to_node_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 79:22]
  assign tx_ser_io_in_bits = io_inner_layer_to_node_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 78:21]
  assign tx_ser_io_out_credit = io_outer_tx_credit; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 65:15]
  assign rx_queue_clock = clock;
  assign rx_queue_reset = reset;
  assign rx_queue_io_enq_valid = rx_des_io_out_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 73:19]
  assign rx_queue_io_enq_bits = rx_des_io_out_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 73:19]
  assign rx_queue_io_deq_ready = io_inner_node_to_layer_ready; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 81:26]
  assign rx_des_clock = clock;
  assign rx_des_reset = reset;
  assign rx_des_io_in_bits = io_outer_rx_bits; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 67:20]
  assign rx_des_io_in_valid = io_outer_rx_valid; // @[\\src\\main\\scala\\sideband\\sidebandNode.scala 66:21]
endmodule
module sidebandOneInTwoOutSwitch(
  output         io_outer_node_to_layer_ready, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 54:14]
  input          io_outer_node_to_layer_valid, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 54:14]
  input  [127:0] io_outer_node_to_layer_bits, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 54:14]
  input          io_inner_node_to_layer_ready, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 54:14]
  output         io_inner_node_to_layer_valid, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 54:14]
  output [127:0] io_inner_node_to_layer_bits, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 54:14]
  input          io_node_to_node_ready, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 54:14]
  output         io_node_to_node_valid, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 54:14]
  output [127:0] io_node_to_node_bits // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 54:14]
);
  wire  _io_inner_node_to_layer_valid_T_1 = io_outer_node_to_layer_bits[58:56] == 3'h1; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 61:19]
  wire  _io_node_to_node_valid_T_1 = io_outer_node_to_layer_bits[58:56] != 3'h1; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 64:19]
  assign io_outer_node_to_layer_ready = _io_inner_node_to_layer_valid_T_1 ? io_inner_node_to_layer_ready :
    io_node_to_node_ready; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 67:38]
  assign io_inner_node_to_layer_valid = io_outer_node_to_layer_valid & _io_inner_node_to_layer_valid_T_1; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 60:64]
  assign io_inner_node_to_layer_bits = io_outer_node_to_layer_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 62:31]
  assign io_node_to_node_valid = io_outer_node_to_layer_valid & _io_node_to_node_valid_T_1; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 63:57]
  assign io_node_to_node_bits = io_outer_node_to_layer_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 65:24]
endmodule
module sidebandTwoInOneOutSwitch(
  input          io_outer_layer_to_node_ready, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 75:14]
  output         io_outer_layer_to_node_valid, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 75:14]
  output [127:0] io_outer_layer_to_node_bits, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 75:14]
  output         io_inner_layer_to_node_ready, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 75:14]
  input          io_inner_layer_to_node_valid, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 75:14]
  input  [127:0] io_inner_layer_to_node_bits, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 75:14]
  output         io_node_to_node_ready, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 75:14]
  input          io_node_to_node_valid, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 75:14]
  input  [127:0] io_node_to_node_bits // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 75:14]
);
  wire [127:0] _priority_node_to_node_T = io_node_to_node_bits & 128'h1f; // @[\\src\\main\\scala\\sideband\\sb-msg-encoding.scala 368:31]
  wire  _priority_node_to_node_T_7 = 128'h10 == _priority_node_to_node_T | 128'h11 == _priority_node_to_node_T | 128'h19
     == _priority_node_to_node_T; // @[\\src\\main\\scala\\sideband\\sb-msg-encoding.scala 368:58]
  wire  _priority_node_to_node_T_12 = 128'h12 == _priority_node_to_node_T | 128'h1b == _priority_node_to_node_T; // @[\\src\\main\\scala\\sideband\\sb-msg-encoding.scala 369:40]
  wire [1:0] _priority_node_to_node_T_13 = _priority_node_to_node_T_12 ? 2'h1 : 2'h2; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 90:8]
  wire [1:0] priority_node_to_node = _priority_node_to_node_T_7 ? 2'h0 : _priority_node_to_node_T_13; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 87:31]
  wire [127:0] _priority_inner_layer_to_node_T = io_inner_layer_to_node_bits & 128'h1f; // @[\\src\\main\\scala\\sideband\\sb-msg-encoding.scala 368:31]
  wire  _priority_inner_layer_to_node_T_7 = 128'h10 == _priority_inner_layer_to_node_T | 128'h11 ==
    _priority_inner_layer_to_node_T | 128'h19 == _priority_inner_layer_to_node_T; // @[\\src\\main\\scala\\sideband\\sb-msg-encoding.scala 368:58]
  wire  _priority_inner_layer_to_node_T_12 = 128'h12 == _priority_inner_layer_to_node_T | 128'h1b ==
    _priority_inner_layer_to_node_T; // @[\\src\\main\\scala\\sideband\\sb-msg-encoding.scala 369:40]
  wire [1:0] _priority_inner_layer_to_node_T_13 = _priority_inner_layer_to_node_T_12 ? 2'h1 : 2'h2; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 95:8]
  wire [1:0] priority_inner_layer_to_node = _priority_inner_layer_to_node_T_7 ? 2'h0 :
    _priority_inner_layer_to_node_T_13; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 92:38]
  wire  _flag_T = io_node_to_node_valid & io_inner_layer_to_node_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 98:27]
  wire  _flag_T_1 = priority_inner_layer_to_node > priority_node_to_node; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 99:34]
  wire  flag = _flag_T ? _flag_T_1 : io_node_to_node_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 97:14]
  assign io_outer_layer_to_node_valid = io_node_to_node_valid | io_inner_layer_to_node_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 103:57]
  assign io_outer_layer_to_node_bits = flag ? io_node_to_node_bits : io_inner_layer_to_node_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 104:37]
  assign io_inner_layer_to_node_ready = flag ? 1'h0 : io_outer_layer_to_node_ready; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 110:38]
  assign io_node_to_node_ready = flag & io_outer_layer_to_node_ready; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 109:31]
endmodule
module sidebandSwitcher(
  input          io_inner_node_to_layer_above_ready, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 10:14]
  output         io_inner_node_to_layer_above_valid, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 10:14]
  output [127:0] io_inner_node_to_layer_above_bits, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 10:14]
  output         io_inner_layer_to_node_below_ready, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 10:14]
  input          io_inner_layer_to_node_below_valid, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 10:14]
  input  [127:0] io_inner_layer_to_node_below_bits, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 10:14]
  output         io_outer_node_to_layer_above_ready, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 10:14]
  input          io_outer_node_to_layer_above_valid, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 10:14]
  input  [127:0] io_outer_node_to_layer_above_bits, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 10:14]
  input          io_outer_layer_to_node_above_ready, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 10:14]
  output         io_outer_layer_to_node_above_valid, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 10:14]
  output [127:0] io_outer_layer_to_node_above_bits, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 10:14]
  output         io_outer_node_to_layer_below_ready, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 10:14]
  input          io_outer_node_to_layer_below_valid, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 10:14]
  input  [127:0] io_outer_node_to_layer_below_bits, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 10:14]
  input          io_outer_layer_to_node_below_ready, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 10:14]
  output         io_outer_layer_to_node_below_valid, // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 10:14]
  output [127:0] io_outer_layer_to_node_below_bits // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 10:14]
);
  wire  outer_node_to_layer_below_subswitch_io_outer_node_to_layer_ready; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 19:51]
  wire  outer_node_to_layer_below_subswitch_io_outer_node_to_layer_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 19:51]
  wire [127:0] outer_node_to_layer_below_subswitch_io_outer_node_to_layer_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 19:51]
  wire  outer_node_to_layer_below_subswitch_io_inner_node_to_layer_ready; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 19:51]
  wire  outer_node_to_layer_below_subswitch_io_inner_node_to_layer_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 19:51]
  wire [127:0] outer_node_to_layer_below_subswitch_io_inner_node_to_layer_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 19:51]
  wire  outer_node_to_layer_below_subswitch_io_node_to_node_ready; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 19:51]
  wire  outer_node_to_layer_below_subswitch_io_node_to_node_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 19:51]
  wire [127:0] outer_node_to_layer_below_subswitch_io_node_to_node_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 19:51]
  wire  outer_node_to_layer_above_subswitch_io_outer_node_to_layer_ready; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 22:51]
  wire  outer_node_to_layer_above_subswitch_io_outer_node_to_layer_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 22:51]
  wire [127:0] outer_node_to_layer_above_subswitch_io_outer_node_to_layer_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 22:51]
  wire  outer_node_to_layer_above_subswitch_io_inner_node_to_layer_ready; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 22:51]
  wire  outer_node_to_layer_above_subswitch_io_inner_node_to_layer_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 22:51]
  wire [127:0] outer_node_to_layer_above_subswitch_io_inner_node_to_layer_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 22:51]
  wire  outer_node_to_layer_above_subswitch_io_node_to_node_ready; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 22:51]
  wire  outer_node_to_layer_above_subswitch_io_node_to_node_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 22:51]
  wire [127:0] outer_node_to_layer_above_subswitch_io_node_to_node_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 22:51]
  wire  outer_layer_to_node_above_subswitch_io_outer_layer_to_node_ready; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 35:51]
  wire  outer_layer_to_node_above_subswitch_io_outer_layer_to_node_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 35:51]
  wire [127:0] outer_layer_to_node_above_subswitch_io_outer_layer_to_node_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 35:51]
  wire  outer_layer_to_node_above_subswitch_io_inner_layer_to_node_ready; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 35:51]
  wire  outer_layer_to_node_above_subswitch_io_inner_layer_to_node_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 35:51]
  wire [127:0] outer_layer_to_node_above_subswitch_io_inner_layer_to_node_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 35:51]
  wire  outer_layer_to_node_above_subswitch_io_node_to_node_ready; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 35:51]
  wire  outer_layer_to_node_above_subswitch_io_node_to_node_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 35:51]
  wire [127:0] outer_layer_to_node_above_subswitch_io_node_to_node_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 35:51]
  wire  outer_layer_to_node_below_subswitch_io_outer_layer_to_node_ready; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 38:51]
  wire  outer_layer_to_node_below_subswitch_io_outer_layer_to_node_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 38:51]
  wire [127:0] outer_layer_to_node_below_subswitch_io_outer_layer_to_node_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 38:51]
  wire  outer_layer_to_node_below_subswitch_io_inner_layer_to_node_ready; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 38:51]
  wire  outer_layer_to_node_below_subswitch_io_inner_layer_to_node_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 38:51]
  wire [127:0] outer_layer_to_node_below_subswitch_io_inner_layer_to_node_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 38:51]
  wire  outer_layer_to_node_below_subswitch_io_node_to_node_ready; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 38:51]
  wire  outer_layer_to_node_below_subswitch_io_node_to_node_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 38:51]
  wire [127:0] outer_layer_to_node_below_subswitch_io_node_to_node_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 38:51]
  sidebandOneInTwoOutSwitch outer_node_to_layer_below_subswitch ( // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 19:51]
    .io_outer_node_to_layer_ready(outer_node_to_layer_below_subswitch_io_outer_node_to_layer_ready),
    .io_outer_node_to_layer_valid(outer_node_to_layer_below_subswitch_io_outer_node_to_layer_valid),
    .io_outer_node_to_layer_bits(outer_node_to_layer_below_subswitch_io_outer_node_to_layer_bits),
    .io_inner_node_to_layer_ready(outer_node_to_layer_below_subswitch_io_inner_node_to_layer_ready),
    .io_inner_node_to_layer_valid(outer_node_to_layer_below_subswitch_io_inner_node_to_layer_valid),
    .io_inner_node_to_layer_bits(outer_node_to_layer_below_subswitch_io_inner_node_to_layer_bits),
    .io_node_to_node_ready(outer_node_to_layer_below_subswitch_io_node_to_node_ready),
    .io_node_to_node_valid(outer_node_to_layer_below_subswitch_io_node_to_node_valid),
    .io_node_to_node_bits(outer_node_to_layer_below_subswitch_io_node_to_node_bits)
  );
  sidebandOneInTwoOutSwitch outer_node_to_layer_above_subswitch ( // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 22:51]
    .io_outer_node_to_layer_ready(outer_node_to_layer_above_subswitch_io_outer_node_to_layer_ready),
    .io_outer_node_to_layer_valid(outer_node_to_layer_above_subswitch_io_outer_node_to_layer_valid),
    .io_outer_node_to_layer_bits(outer_node_to_layer_above_subswitch_io_outer_node_to_layer_bits),
    .io_inner_node_to_layer_ready(outer_node_to_layer_above_subswitch_io_inner_node_to_layer_ready),
    .io_inner_node_to_layer_valid(outer_node_to_layer_above_subswitch_io_inner_node_to_layer_valid),
    .io_inner_node_to_layer_bits(outer_node_to_layer_above_subswitch_io_inner_node_to_layer_bits),
    .io_node_to_node_ready(outer_node_to_layer_above_subswitch_io_node_to_node_ready),
    .io_node_to_node_valid(outer_node_to_layer_above_subswitch_io_node_to_node_valid),
    .io_node_to_node_bits(outer_node_to_layer_above_subswitch_io_node_to_node_bits)
  );
  sidebandTwoInOneOutSwitch outer_layer_to_node_above_subswitch ( // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 35:51]
    .io_outer_layer_to_node_ready(outer_layer_to_node_above_subswitch_io_outer_layer_to_node_ready),
    .io_outer_layer_to_node_valid(outer_layer_to_node_above_subswitch_io_outer_layer_to_node_valid),
    .io_outer_layer_to_node_bits(outer_layer_to_node_above_subswitch_io_outer_layer_to_node_bits),
    .io_inner_layer_to_node_ready(outer_layer_to_node_above_subswitch_io_inner_layer_to_node_ready),
    .io_inner_layer_to_node_valid(outer_layer_to_node_above_subswitch_io_inner_layer_to_node_valid),
    .io_inner_layer_to_node_bits(outer_layer_to_node_above_subswitch_io_inner_layer_to_node_bits),
    .io_node_to_node_ready(outer_layer_to_node_above_subswitch_io_node_to_node_ready),
    .io_node_to_node_valid(outer_layer_to_node_above_subswitch_io_node_to_node_valid),
    .io_node_to_node_bits(outer_layer_to_node_above_subswitch_io_node_to_node_bits)
  );
  sidebandTwoInOneOutSwitch outer_layer_to_node_below_subswitch ( // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 38:51]
    .io_outer_layer_to_node_ready(outer_layer_to_node_below_subswitch_io_outer_layer_to_node_ready),
    .io_outer_layer_to_node_valid(outer_layer_to_node_below_subswitch_io_outer_layer_to_node_valid),
    .io_outer_layer_to_node_bits(outer_layer_to_node_below_subswitch_io_outer_layer_to_node_bits),
    .io_inner_layer_to_node_ready(outer_layer_to_node_below_subswitch_io_inner_layer_to_node_ready),
    .io_inner_layer_to_node_valid(outer_layer_to_node_below_subswitch_io_inner_layer_to_node_valid),
    .io_inner_layer_to_node_bits(outer_layer_to_node_below_subswitch_io_inner_layer_to_node_bits),
    .io_node_to_node_ready(outer_layer_to_node_below_subswitch_io_node_to_node_ready),
    .io_node_to_node_valid(outer_layer_to_node_below_subswitch_io_node_to_node_valid),
    .io_node_to_node_bits(outer_layer_to_node_below_subswitch_io_node_to_node_bits)
  );
  assign io_inner_node_to_layer_above_valid = outer_node_to_layer_above_subswitch_io_inner_node_to_layer_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 30:62]
  assign io_inner_node_to_layer_above_bits = outer_node_to_layer_above_subswitch_io_inner_node_to_layer_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 30:62]
  assign io_inner_layer_to_node_below_ready = outer_layer_to_node_below_subswitch_io_inner_layer_to_node_ready; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 49:62]
  assign io_outer_node_to_layer_above_ready = outer_node_to_layer_above_subswitch_io_outer_node_to_layer_ready; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 27:62]
  assign io_outer_layer_to_node_above_valid = outer_layer_to_node_above_subswitch_io_outer_layer_to_node_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 45:62]
  assign io_outer_layer_to_node_above_bits = outer_layer_to_node_above_subswitch_io_outer_layer_to_node_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 45:62]
  assign io_outer_node_to_layer_below_ready = outer_node_to_layer_below_subswitch_io_outer_node_to_layer_ready; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 26:62]
  assign io_outer_layer_to_node_below_valid = outer_layer_to_node_below_subswitch_io_outer_layer_to_node_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 46:62]
  assign io_outer_layer_to_node_below_bits = outer_layer_to_node_below_subswitch_io_outer_layer_to_node_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 46:62]
  assign outer_node_to_layer_below_subswitch_io_outer_node_to_layer_valid = io_outer_node_to_layer_below_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 26:62]
  assign outer_node_to_layer_below_subswitch_io_outer_node_to_layer_bits = io_outer_node_to_layer_below_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 26:62]
  assign outer_node_to_layer_below_subswitch_io_inner_node_to_layer_ready = 1'h0; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 29:62]
  assign outer_node_to_layer_below_subswitch_io_node_to_node_ready =
    outer_layer_to_node_above_subswitch_io_node_to_node_ready; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 12:41 42:55]
  assign outer_node_to_layer_above_subswitch_io_outer_node_to_layer_valid = io_outer_node_to_layer_above_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 27:62]
  assign outer_node_to_layer_above_subswitch_io_outer_node_to_layer_bits = io_outer_node_to_layer_above_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 27:62]
  assign outer_node_to_layer_above_subswitch_io_inner_node_to_layer_ready = 1'h1; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 30:62]
  assign outer_node_to_layer_above_subswitch_io_node_to_node_ready =
    outer_layer_to_node_below_subswitch_io_node_to_node_ready; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 15:41 43:55]
  assign outer_layer_to_node_above_subswitch_io_outer_layer_to_node_ready = io_outer_layer_to_node_above_ready; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 45:62]
  assign outer_layer_to_node_above_subswitch_io_inner_layer_to_node_valid = 1'h0; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 48:62]
  assign outer_layer_to_node_above_subswitch_io_inner_layer_to_node_bits = 128'h0; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 48:62]
  assign outer_layer_to_node_above_subswitch_io_node_to_node_valid =
    outer_node_to_layer_below_subswitch_io_node_to_node_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 12:41 32:31]
  assign outer_layer_to_node_above_subswitch_io_node_to_node_bits =
    outer_node_to_layer_below_subswitch_io_node_to_node_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 12:41 32:31]
  assign outer_layer_to_node_below_subswitch_io_outer_layer_to_node_ready = io_outer_layer_to_node_below_ready; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 46:62]
  assign outer_layer_to_node_below_subswitch_io_inner_layer_to_node_valid = io_inner_layer_to_node_below_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 49:62]
  assign outer_layer_to_node_below_subswitch_io_inner_layer_to_node_bits = io_inner_layer_to_node_below_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 49:62]
  assign outer_layer_to_node_below_subswitch_io_node_to_node_valid =
    outer_node_to_layer_above_subswitch_io_node_to_node_valid; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 15:41 33:31]
  assign outer_layer_to_node_below_subswitch_io_node_to_node_bits =
    outer_node_to_layer_above_subswitch_io_node_to_node_bits; // @[\\src\\main\\scala\\sideband\\sidebandSwitcher.scala 15:41 33:31]
endmodule
module D2DSidebandModule(
  input          clock,
  input          reset,
  output [127:0] io_fdi_pl_cfg, // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 38:16]
  output         io_fdi_pl_cfg_vld, // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 38:16]
  input          io_fdi_pl_cfg_crd, // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 38:16]
  input  [127:0] io_fdi_lp_cfg, // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 38:16]
  input          io_fdi_lp_cfg_vld, // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 38:16]
  output         io_fdi_lp_cfg_crd, // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 38:16]
  input  [127:0] io_rdi_pl_cfg, // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 38:16]
  input          io_rdi_pl_cfg_vld, // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 38:16]
  output         io_rdi_pl_cfg_crd, // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 38:16]
  output [127:0] io_rdi_lp_cfg, // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 38:16]
  output         io_rdi_lp_cfg_vld, // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 38:16]
  input          io_rdi_lp_cfg_crd, // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 38:16]
  output [5:0]   io_sideband_rcv, // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 38:16]
  input  [5:0]   io_sideband_snt, // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 38:16]
  output         io_sideband_rdy // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 38:16]
);
  wire  fdi_sideband_node_clock; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 40:35]
  wire  fdi_sideband_node_reset; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 40:35]
  wire  fdi_sideband_node_io_inner_layer_to_node_ready; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 40:35]
  wire  fdi_sideband_node_io_inner_layer_to_node_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 40:35]
  wire [127:0] fdi_sideband_node_io_inner_layer_to_node_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 40:35]
  wire  fdi_sideband_node_io_inner_node_to_layer_ready; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 40:35]
  wire  fdi_sideband_node_io_inner_node_to_layer_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 40:35]
  wire [127:0] fdi_sideband_node_io_inner_node_to_layer_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 40:35]
  wire [127:0] fdi_sideband_node_io_outer_tx_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 40:35]
  wire  fdi_sideband_node_io_outer_tx_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 40:35]
  wire  fdi_sideband_node_io_outer_tx_credit; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 40:35]
  wire [127:0] fdi_sideband_node_io_outer_rx_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 40:35]
  wire  fdi_sideband_node_io_outer_rx_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 40:35]
  wire  fdi_sideband_node_io_outer_rx_credit; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 40:35]
  wire  rdi_sideband_node_clock; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 41:35]
  wire  rdi_sideband_node_reset; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 41:35]
  wire  rdi_sideband_node_io_inner_layer_to_node_ready; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 41:35]
  wire  rdi_sideband_node_io_inner_layer_to_node_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 41:35]
  wire [127:0] rdi_sideband_node_io_inner_layer_to_node_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 41:35]
  wire  rdi_sideband_node_io_inner_node_to_layer_ready; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 41:35]
  wire  rdi_sideband_node_io_inner_node_to_layer_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 41:35]
  wire [127:0] rdi_sideband_node_io_inner_node_to_layer_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 41:35]
  wire [127:0] rdi_sideband_node_io_outer_tx_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 41:35]
  wire  rdi_sideband_node_io_outer_tx_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 41:35]
  wire  rdi_sideband_node_io_outer_tx_credit; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 41:35]
  wire [127:0] rdi_sideband_node_io_outer_rx_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 41:35]
  wire  rdi_sideband_node_io_outer_rx_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 41:35]
  wire  rdi_sideband_node_io_outer_rx_credit; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 41:35]
  wire  sideband_switch_io_inner_node_to_layer_above_ready; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 42:33]
  wire  sideband_switch_io_inner_node_to_layer_above_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 42:33]
  wire [127:0] sideband_switch_io_inner_node_to_layer_above_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 42:33]
  wire  sideband_switch_io_inner_layer_to_node_below_ready; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 42:33]
  wire  sideband_switch_io_inner_layer_to_node_below_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 42:33]
  wire [127:0] sideband_switch_io_inner_layer_to_node_below_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 42:33]
  wire  sideband_switch_io_outer_node_to_layer_above_ready; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 42:33]
  wire  sideband_switch_io_outer_node_to_layer_above_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 42:33]
  wire [127:0] sideband_switch_io_outer_node_to_layer_above_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 42:33]
  wire  sideband_switch_io_outer_layer_to_node_above_ready; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 42:33]
  wire  sideband_switch_io_outer_layer_to_node_above_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 42:33]
  wire [127:0] sideband_switch_io_outer_layer_to_node_above_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 42:33]
  wire  sideband_switch_io_outer_node_to_layer_below_ready; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 42:33]
  wire  sideband_switch_io_outer_node_to_layer_below_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 42:33]
  wire [127:0] sideband_switch_io_outer_node_to_layer_below_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 42:33]
  wire  sideband_switch_io_outer_layer_to_node_below_ready; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 42:33]
  wire  sideband_switch_io_outer_layer_to_node_below_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 42:33]
  wire [127:0] sideband_switch_io_outer_layer_to_node_below_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 42:33]
  wire [127:0] _T_1 = sideband_switch_io_inner_node_to_layer_above_bits & 128'hffffff003fc01f; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 72:64]
  wire [127:0] _T_3 = sideband_switch_io_inner_node_to_layer_above_bits & 128'hff003fc01f; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 74:70]
  wire [5:0] _GEN_0 = 128'h401b == _T_1 ? 6'h24 : 6'h0; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 100:86 101:29 103:29]
  wire [5:0] _GEN_1 = 128'h100020012 == _T_1 ? 6'h32 : _GEN_0; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 98:97 99:29]
  wire [5:0] _GEN_2 = 128'h20012 == _T_1 ? 6'h31 : _GEN_1; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 96:97 97:29]
  wire [5:0] _GEN_3 = 128'h1c012 == _T_1 ? 6'h21 : _GEN_2; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 94:97 95:29]
  wire [5:0] _GEN_4 = 128'hc00010012 == _T_1 ? 6'h1c : _GEN_3; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 92:109 93:29]
  wire [5:0] _GEN_5 = 128'h900010012 == _T_1 ? 6'h19 : _GEN_4; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 90:112 91:29]
  wire [5:0] _GEN_6 = 128'h800010012 == _T_1 ? 6'h18 : _GEN_5; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 88:104 89:29]
  wire [5:0] _GEN_7 = 128'h400010012 == _T_1 ? 6'h14 : _GEN_6; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 86:104 87:29]
  wire [5:0] _GEN_8 = 128'h200010012 == _T_1 ? 6'h13 : _GEN_7; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 84:108 85:29]
  wire [5:0] _GEN_9 = 128'h100010012 == _T_1 ? 6'h11 : _GEN_8; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 82:108 83:29]
  wire [5:0] _GEN_10 = 128'hc0000c012 == _T_3 ? 6'hc : _GEN_9; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 80:109 81:29]
  wire [5:0] _GEN_11 = 128'h90000c012 == _T_3 ? 6'h9 : _GEN_10; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 78:112 79:29]
  wire [5:0] _GEN_12 = 128'h80000c012 == _T_3 ? 6'h8 : _GEN_11; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 76:104 77:29]
  wire [5:0] _GEN_13 = 128'h40000c012 == _T_3 ? 6'h4 : _GEN_12; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 74:104 75:29]
  wire [5:0] _GEN_14 = 128'h10000c012 == _T_1 ? 6'h1 : _GEN_13; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 72:102 73:29]
  wire [142:0] _GEN_16 = io_sideband_snt == 6'h24 ? 143'h488000050000002000401b : 143'h500000020000012; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 139:64 140:63 142:63]
  wire [142:0] _GEN_17 = io_sideband_snt == 6'h32 ? 143'h500000120020012 : _GEN_16; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 137:75 138:63]
  wire [142:0] _GEN_18 = io_sideband_snt == 6'h31 ? 143'h500000020020012 : _GEN_17; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 135:75 136:63]
  wire [142:0] _GEN_19 = io_sideband_snt == 6'h21 ? 143'h50000002001c012 : _GEN_18; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 133:75 134:63]
  wire [142:0] _GEN_20 = io_sideband_snt == 6'h1c ? 143'h500000c20010012 : _GEN_19; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 131:69 132:63]
  wire [142:0] _GEN_21 = io_sideband_snt == 6'h19 ? 143'h500000920010012 : _GEN_20; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 129:70 130:63]
  wire [142:0] _GEN_22 = io_sideband_snt == 6'h18 ? 143'h500000820010012 : _GEN_21; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 127:63 128:63]
  wire [142:0] _GEN_23 = io_sideband_snt == 6'h14 ? 143'h500000420010012 : _GEN_22; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 125:63 126:63]
  wire [142:0] _GEN_24 = io_sideband_snt == 6'h13 ? 143'h500000220010012 : _GEN_23; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 123:66 124:63]
  wire [142:0] _GEN_25 = io_sideband_snt == 6'h11 ? 143'h500000120010012 : _GEN_24; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 121:67 122:63]
  wire [142:0] _GEN_26 = io_sideband_snt == 6'hc ? 143'h500000c2000c012 : _GEN_25; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 119:69 120:63]
  wire [142:0] _GEN_27 = io_sideband_snt == 6'h9 ? 143'h50000092000c012 : _GEN_26; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 117:70 118:63]
  wire [142:0] _GEN_28 = io_sideband_snt == 6'h8 ? 143'h50000082000c012 : _GEN_27; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 115:63 116:63]
  wire [142:0] _GEN_29 = io_sideband_snt == 6'h4 ? 143'h50000042000c012 : _GEN_28; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 113:63 114:63]
  wire [142:0] _GEN_30 = io_sideband_snt == 6'h1 ? 143'h50000012000c012 : _GEN_29; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 111:61 112:63]
  wire [142:0] _GEN_31 = io_sideband_snt != 6'h0 ? _GEN_30 : 143'h500000020000012; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 110:50 147:59]
  SidebandNode fdi_sideband_node ( // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 40:35]
    .clock(fdi_sideband_node_clock),
    .reset(fdi_sideband_node_reset),
    .io_inner_layer_to_node_ready(fdi_sideband_node_io_inner_layer_to_node_ready),
    .io_inner_layer_to_node_valid(fdi_sideband_node_io_inner_layer_to_node_valid),
    .io_inner_layer_to_node_bits(fdi_sideband_node_io_inner_layer_to_node_bits),
    .io_inner_node_to_layer_ready(fdi_sideband_node_io_inner_node_to_layer_ready),
    .io_inner_node_to_layer_valid(fdi_sideband_node_io_inner_node_to_layer_valid),
    .io_inner_node_to_layer_bits(fdi_sideband_node_io_inner_node_to_layer_bits),
    .io_outer_tx_bits(fdi_sideband_node_io_outer_tx_bits),
    .io_outer_tx_valid(fdi_sideband_node_io_outer_tx_valid),
    .io_outer_tx_credit(fdi_sideband_node_io_outer_tx_credit),
    .io_outer_rx_bits(fdi_sideband_node_io_outer_rx_bits),
    .io_outer_rx_valid(fdi_sideband_node_io_outer_rx_valid),
    .io_outer_rx_credit(fdi_sideband_node_io_outer_rx_credit)
  );
  SidebandNode rdi_sideband_node ( // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 41:35]
    .clock(rdi_sideband_node_clock),
    .reset(rdi_sideband_node_reset),
    .io_inner_layer_to_node_ready(rdi_sideband_node_io_inner_layer_to_node_ready),
    .io_inner_layer_to_node_valid(rdi_sideband_node_io_inner_layer_to_node_valid),
    .io_inner_layer_to_node_bits(rdi_sideband_node_io_inner_layer_to_node_bits),
    .io_inner_node_to_layer_ready(rdi_sideband_node_io_inner_node_to_layer_ready),
    .io_inner_node_to_layer_valid(rdi_sideband_node_io_inner_node_to_layer_valid),
    .io_inner_node_to_layer_bits(rdi_sideband_node_io_inner_node_to_layer_bits),
    .io_outer_tx_bits(rdi_sideband_node_io_outer_tx_bits),
    .io_outer_tx_valid(rdi_sideband_node_io_outer_tx_valid),
    .io_outer_tx_credit(rdi_sideband_node_io_outer_tx_credit),
    .io_outer_rx_bits(rdi_sideband_node_io_outer_rx_bits),
    .io_outer_rx_valid(rdi_sideband_node_io_outer_rx_valid),
    .io_outer_rx_credit(rdi_sideband_node_io_outer_rx_credit)
  );
  sidebandSwitcher sideband_switch ( // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 42:33]
    .io_inner_node_to_layer_above_ready(sideband_switch_io_inner_node_to_layer_above_ready),
    .io_inner_node_to_layer_above_valid(sideband_switch_io_inner_node_to_layer_above_valid),
    .io_inner_node_to_layer_above_bits(sideband_switch_io_inner_node_to_layer_above_bits),
    .io_inner_layer_to_node_below_ready(sideband_switch_io_inner_layer_to_node_below_ready),
    .io_inner_layer_to_node_below_valid(sideband_switch_io_inner_layer_to_node_below_valid),
    .io_inner_layer_to_node_below_bits(sideband_switch_io_inner_layer_to_node_below_bits),
    .io_outer_node_to_layer_above_ready(sideband_switch_io_outer_node_to_layer_above_ready),
    .io_outer_node_to_layer_above_valid(sideband_switch_io_outer_node_to_layer_above_valid),
    .io_outer_node_to_layer_above_bits(sideband_switch_io_outer_node_to_layer_above_bits),
    .io_outer_layer_to_node_above_ready(sideband_switch_io_outer_layer_to_node_above_ready),
    .io_outer_layer_to_node_above_valid(sideband_switch_io_outer_layer_to_node_above_valid),
    .io_outer_layer_to_node_above_bits(sideband_switch_io_outer_layer_to_node_above_bits),
    .io_outer_node_to_layer_below_ready(sideband_switch_io_outer_node_to_layer_below_ready),
    .io_outer_node_to_layer_below_valid(sideband_switch_io_outer_node_to_layer_below_valid),
    .io_outer_node_to_layer_below_bits(sideband_switch_io_outer_node_to_layer_below_bits),
    .io_outer_layer_to_node_below_ready(sideband_switch_io_outer_layer_to_node_below_ready),
    .io_outer_layer_to_node_below_valid(sideband_switch_io_outer_layer_to_node_below_valid),
    .io_outer_layer_to_node_below_bits(sideband_switch_io_outer_layer_to_node_below_bits)
  );
  assign io_fdi_pl_cfg = fdi_sideband_node_io_outer_tx_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 44:19]
  assign io_fdi_pl_cfg_vld = fdi_sideband_node_io_outer_tx_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 45:23]
  assign io_fdi_lp_cfg_crd = fdi_sideband_node_io_outer_rx_credit; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 50:23]
  assign io_rdi_pl_cfg_crd = rdi_sideband_node_io_outer_rx_credit; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 54:23]
  assign io_rdi_lp_cfg = rdi_sideband_node_io_outer_tx_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 56:19]
  assign io_rdi_lp_cfg_vld = rdi_sideband_node_io_outer_tx_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 57:23]
  assign io_sideband_rcv = sideband_switch_io_inner_node_to_layer_above_valid &
    sideband_switch_io_inner_node_to_layer_above_ready ? _GEN_14 : 6'h0; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 71:115 106:25]
  assign io_sideband_rdy = io_sideband_snt != 6'h0 & (sideband_switch_io_inner_layer_to_node_below_valid &
    sideband_switch_io_inner_layer_to_node_below_ready); // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 110:50 145:25 149:25]
  assign fdi_sideband_node_clock = clock;
  assign fdi_sideband_node_reset = reset;
  assign fdi_sideband_node_io_inner_layer_to_node_valid = sideband_switch_io_outer_layer_to_node_above_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 60:50]
  assign fdi_sideband_node_io_inner_layer_to_node_bits = sideband_switch_io_outer_layer_to_node_above_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 60:50]
  assign fdi_sideband_node_io_inner_node_to_layer_ready = sideband_switch_io_outer_node_to_layer_above_ready; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 62:50]
  assign fdi_sideband_node_io_outer_tx_credit = io_fdi_pl_cfg_crd; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 46:42]
  assign fdi_sideband_node_io_outer_rx_bits = io_fdi_lp_cfg; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 48:40]
  assign fdi_sideband_node_io_outer_rx_valid = io_fdi_lp_cfg_vld; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 49:41]
  assign rdi_sideband_node_clock = clock;
  assign rdi_sideband_node_reset = reset;
  assign rdi_sideband_node_io_inner_layer_to_node_valid = sideband_switch_io_outer_layer_to_node_below_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 61:50]
  assign rdi_sideband_node_io_inner_layer_to_node_bits = sideband_switch_io_outer_layer_to_node_below_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 61:50]
  assign rdi_sideband_node_io_inner_node_to_layer_ready = sideband_switch_io_outer_node_to_layer_below_ready; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 63:50]
  assign rdi_sideband_node_io_outer_tx_credit = io_rdi_lp_cfg_crd; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 58:42]
  assign rdi_sideband_node_io_outer_rx_bits = io_rdi_pl_cfg; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 52:40]
  assign rdi_sideband_node_io_outer_rx_valid = io_rdi_pl_cfg_vld; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 53:41]
  assign sideband_switch_io_inner_node_to_layer_above_ready = 1'h1; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 69:56]
  assign sideband_switch_io_inner_layer_to_node_below_valid = io_sideband_snt != 6'h0; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 110:26]
  assign sideband_switch_io_inner_layer_to_node_below_bits = _GEN_31[127:0];
  assign sideband_switch_io_outer_node_to_layer_above_valid = fdi_sideband_node_io_inner_node_to_layer_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 62:50]
  assign sideband_switch_io_outer_node_to_layer_above_bits = fdi_sideband_node_io_inner_node_to_layer_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 62:50]
  assign sideband_switch_io_outer_layer_to_node_above_ready = fdi_sideband_node_io_inner_layer_to_node_ready; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 60:50]
  assign sideband_switch_io_outer_node_to_layer_below_valid = rdi_sideband_node_io_inner_node_to_layer_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 63:50]
  assign sideband_switch_io_outer_node_to_layer_below_bits = rdi_sideband_node_io_inner_node_to_layer_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 63:50]
  assign sideband_switch_io_outer_layer_to_node_below_ready = rdi_sideband_node_io_inner_layer_to_node_ready; // @[\\src\\main\\scala\\d2dadapter\\D2DSidebandModule.scala 61:50]
endmodule
module D2DMainbandModule(
  input          clock,
  input          reset,
  input          io_fdi_lp_irdy, // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 47:16]
  input          io_fdi_lp_valid, // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 47:16]
  input  [511:0] io_fdi_lp_data, // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 47:16]
  output         io_fdi_pl_trdy, // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 47:16]
  output         io_fdi_pl_valid, // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 47:16]
  output [511:0] io_fdi_pl_data, // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 47:16]
  output         io_rdi_lp_irdy, // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 47:16]
  output         io_rdi_lp_valid, // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 47:16]
  output [511:0] io_rdi_lp_data, // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 47:16]
  input          io_rdi_pl_trdy, // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 47:16]
  input          io_rdi_pl_valid, // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 47:16]
  input  [511:0] io_rdi_pl_data, // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 47:16]
  input  [3:0]   io_d2d_state, // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 47:16]
  input          io_mainband_stallreq, // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 47:16]
  output         io_mainband_stalldone, // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 47:16]
  output [511:0] io_snd_data, // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 47:16]
  output         io_snd_data_vld, // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 47:16]
  output         io_rcv_data_vld, // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 47:16]
  input          io_parity_insert, // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 47:16]
  input  [511:0] io_parity_data, // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 47:16]
  output         io_parity_rdy, // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 47:16]
  input          io_parity_check // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 47:16]
);
`ifdef RANDOMIZE_REG_INIT
  reg [511:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [511:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
`endif // RANDOMIZE_REG_INIT
  reg [511:0] data_buff_snt_reg; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 49:32]
  reg  data_buff_snt_fill_reg; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 50:41]
  reg [511:0] data_buff_rcv_reg; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 51:32]
  reg  data_buff_rcv_fill_reg; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 52:41]
  reg  stall_reg; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 55:28]
  wire  _GEN_0 = io_d2d_state != 4'h1 ? 1'h0 : stall_reg; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 62:49 63:19 65:19]
  wire  _GEN_1 = io_mainband_stallreq | _GEN_0; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 60:31 61:19]
  wire  snd_success_rdi = io_rdi_lp_irdy & io_rdi_lp_valid & io_rdi_pl_trdy; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 76:57]
  wire  _T_1 = ~io_parity_insert; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 79:10]
  wire  _T_3 = ~stall_reg; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 79:57]
  wire  _T_6 = io_parity_insert & _T_3; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 82:33]
  wire  _T_9 = io_fdi_lp_irdy & io_fdi_lp_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 98:29]
  wire  _T_11 = _T_1 & snd_success_rdi; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 105:34]
  wire  _T_14 = io_rdi_pl_valid & ~io_parity_check; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 142:26]
  assign io_fdi_pl_trdy = ~data_buff_snt_fill_reg | _T_11; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 96:34 97:24]
  assign io_fdi_pl_valid = data_buff_rcv_fill_reg; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 136:33 137:25 139:25]
  assign io_fdi_pl_data = data_buff_rcv_reg; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 128:20]
  assign io_rdi_lp_irdy = ~io_parity_insert & data_buff_snt_fill_reg & ~stall_reg | _T_6; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 79:68 80:24]
  assign io_rdi_lp_valid = ~io_parity_insert & data_buff_snt_fill_reg & ~stall_reg | _T_6; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 79:68 80:24]
  assign io_rdi_lp_data = io_parity_insert ? io_parity_data : data_buff_snt_reg; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 68:27 69:24 71:24]
  assign io_mainband_stalldone = stall_reg; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 57:27]
  assign io_snd_data = io_fdi_lp_data; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 74:17]
  assign io_snd_data_vld = io_fdi_pl_trdy & io_fdi_lp_valid & io_fdi_lp_irdy; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 75:57]
  assign io_rcv_data_vld = io_rdi_pl_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 127:21]
  assign io_parity_rdy = io_parity_insert & snd_success_rdi; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 90:27]
  always @(posedge clock) begin
    if (~data_buff_snt_fill_reg) begin // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 96:34]
      data_buff_snt_reg <= io_fdi_lp_data;
    end else if (_T_1 & snd_success_rdi) begin // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 105:53]
      if (_T_9) begin // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 107:48]
        data_buff_snt_reg <= io_fdi_lp_data; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 109:31]
      end
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 50:41]
      data_buff_snt_fill_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 50:41]
    end else if (~data_buff_snt_fill_reg) begin // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 96:34]
      data_buff_snt_fill_reg <= _T_9;
    end else if (_T_1 & snd_success_rdi) begin // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 105:53]
      data_buff_snt_fill_reg <= _T_9;
    end
    if (io_rdi_pl_valid) begin // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 130:26]
      data_buff_rcv_reg <= io_rdi_pl_data; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 131:27]
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 52:41]
      data_buff_rcv_fill_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 52:41]
    end else begin
      data_buff_rcv_fill_reg <= _T_14;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 55:28]
      stall_reg <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\D2DMainbandModule.scala 55:28]
    end else begin
      stall_reg <= _GEN_1;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {16{`RANDOM}};
  data_buff_snt_reg = _RAND_0[511:0];
  _RAND_1 = {1{`RANDOM}};
  data_buff_snt_fill_reg = _RAND_1[0:0];
  _RAND_2 = {16{`RANDOM}};
  data_buff_rcv_reg = _RAND_2[511:0];
  _RAND_3 = {1{`RANDOM}};
  data_buff_rcv_fill_reg = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  stall_reg = _RAND_4[0:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module ParityGenerator(
  input        clock,
  input        reset,
  input  [7:0] io_snd_data_0, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_1, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_2, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_3, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_4, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_5, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_6, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_7, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_8, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_9, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_10, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_11, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_12, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_13, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_14, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_15, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_16, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_17, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_18, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_19, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_20, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_21, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_22, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_23, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_24, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_25, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_26, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_27, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_28, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_29, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_30, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_31, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_32, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_33, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_34, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_35, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_36, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_37, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_38, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_39, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_40, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_41, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_42, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_43, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_44, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_45, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_46, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_47, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_48, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_49, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_50, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_51, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_52, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_53, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_54, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_55, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_56, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_57, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_58, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_59, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_60, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_61, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_62, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [7:0] io_snd_data_63, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input        io_snd_data_vld, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input        io_rcv_data_vld, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_0, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_1, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_2, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_3, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_4, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_5, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_6, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_7, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_8, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_9, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_10, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_11, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_12, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_13, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_14, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_15, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_16, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_17, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_18, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_19, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_20, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_21, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_22, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_23, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_24, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_25, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_26, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_27, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_28, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_29, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_30, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_31, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_32, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_33, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_34, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_35, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_36, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_37, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_38, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_39, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_40, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_41, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_42, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_43, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_44, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_45, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_46, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_47, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_48, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_49, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_50, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_51, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_52, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_53, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_54, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_55, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_56, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_57, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_58, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_59, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_60, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_61, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_62, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output [7:0] io_parity_data_63, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output       io_parity_insert, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  output       io_parity_check, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input        io_parity_rdy, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input  [3:0] io_rdi_state, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input        io_parity_rx_enable, // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
  input        io_parity_tx_enable // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 35:16]
);
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
  reg [31:0] _RAND_2;
  reg [31:0] _RAND_3;
  reg [31:0] _RAND_4;
  reg [31:0] _RAND_5;
  reg [31:0] _RAND_6;
  reg [31:0] _RAND_7;
  reg [31:0] _RAND_8;
  reg [31:0] _RAND_9;
  reg [31:0] _RAND_10;
  reg [31:0] _RAND_11;
  reg [31:0] _RAND_12;
  reg [31:0] _RAND_13;
  reg [31:0] _RAND_14;
  reg [31:0] _RAND_15;
  reg [31:0] _RAND_16;
  reg [31:0] _RAND_17;
  reg [31:0] _RAND_18;
  reg [31:0] _RAND_19;
  reg [31:0] _RAND_20;
  reg [31:0] _RAND_21;
  reg [31:0] _RAND_22;
  reg [31:0] _RAND_23;
  reg [31:0] _RAND_24;
  reg [31:0] _RAND_25;
  reg [31:0] _RAND_26;
  reg [31:0] _RAND_27;
  reg [31:0] _RAND_28;
  reg [31:0] _RAND_29;
  reg [31:0] _RAND_30;
  reg [31:0] _RAND_31;
  reg [31:0] _RAND_32;
  reg [31:0] _RAND_33;
  reg [31:0] _RAND_34;
  reg [31:0] _RAND_35;
  reg [31:0] _RAND_36;
  reg [31:0] _RAND_37;
  reg [31:0] _RAND_38;
  reg [31:0] _RAND_39;
  reg [31:0] _RAND_40;
  reg [31:0] _RAND_41;
  reg [31:0] _RAND_42;
  reg [31:0] _RAND_43;
  reg [31:0] _RAND_44;
  reg [31:0] _RAND_45;
  reg [31:0] _RAND_46;
  reg [31:0] _RAND_47;
  reg [31:0] _RAND_48;
  reg [31:0] _RAND_49;
  reg [31:0] _RAND_50;
  reg [31:0] _RAND_51;
  reg [31:0] _RAND_52;
  reg [31:0] _RAND_53;
  reg [31:0] _RAND_54;
  reg [31:0] _RAND_55;
  reg [31:0] _RAND_56;
  reg [31:0] _RAND_57;
  reg [31:0] _RAND_58;
  reg [31:0] _RAND_59;
  reg [31:0] _RAND_60;
  reg [31:0] _RAND_61;
  reg [31:0] _RAND_62;
  reg [31:0] _RAND_63;
  reg [31:0] _RAND_64;
  reg [31:0] _RAND_65;
  reg [31:0] _RAND_66;
  reg [31:0] _RAND_67;
`endif // RANDOMIZE_REG_INIT
  reg  parity_data_snd_reg_0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_1; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_2; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_3; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_4; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_5; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_6; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_7; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_8; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_9; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_10; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_11; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_12; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_13; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_14; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_15; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_16; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_17; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_18; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_19; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_20; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_21; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_22; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_23; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_24; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_25; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_26; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_27; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_28; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_29; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_30; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_31; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_32; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_33; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_34; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_35; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_36; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_37; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_38; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_39; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_40; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_41; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_42; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_43; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_44; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_45; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_46; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_47; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_48; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_49; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_50; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_51; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_52; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_53; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_54; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_55; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_56; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_57; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_58; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_59; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_60; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_61; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_62; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg  parity_data_snd_reg_63; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
  reg [18:0] parity_dcount_snd_reg; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 40:40]
  reg [8:0] parity_pcount_snd_reg; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 41:40]
  reg [18:0] parity_dcount_rcv_reg; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 42:40]
  reg [8:0] parity_pcount_rcv_reg; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 43:40]
  wire  _T_3 = io_rdi_state != 4'h1; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:23]
  wire [8:0] _T_5 = parity_pcount_snd_reg + 9'h40; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:38]
  wire  _parity_data_snd_reg_0_T_1 = parity_data_snd_reg_0 ^ ^io_snd_data_0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_1_T_1 = parity_data_snd_reg_1 ^ ^io_snd_data_1; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_2_T_1 = parity_data_snd_reg_2 ^ ^io_snd_data_2; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_3_T_1 = parity_data_snd_reg_3 ^ ^io_snd_data_3; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_4_T_1 = parity_data_snd_reg_4 ^ ^io_snd_data_4; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_5_T_1 = parity_data_snd_reg_5 ^ ^io_snd_data_5; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_6_T_1 = parity_data_snd_reg_6 ^ ^io_snd_data_6; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_7_T_1 = parity_data_snd_reg_7 ^ ^io_snd_data_7; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_8_T_1 = parity_data_snd_reg_8 ^ ^io_snd_data_8; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_9_T_1 = parity_data_snd_reg_9 ^ ^io_snd_data_9; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_10_T_1 = parity_data_snd_reg_10 ^ ^io_snd_data_10; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_11_T_1 = parity_data_snd_reg_11 ^ ^io_snd_data_11; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_12_T_1 = parity_data_snd_reg_12 ^ ^io_snd_data_12; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_13_T_1 = parity_data_snd_reg_13 ^ ^io_snd_data_13; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_14_T_1 = parity_data_snd_reg_14 ^ ^io_snd_data_14; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_15_T_1 = parity_data_snd_reg_15 ^ ^io_snd_data_15; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_16_T_1 = parity_data_snd_reg_16 ^ ^io_snd_data_16; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_17_T_1 = parity_data_snd_reg_17 ^ ^io_snd_data_17; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_18_T_1 = parity_data_snd_reg_18 ^ ^io_snd_data_18; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_19_T_1 = parity_data_snd_reg_19 ^ ^io_snd_data_19; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_20_T_1 = parity_data_snd_reg_20 ^ ^io_snd_data_20; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_21_T_1 = parity_data_snd_reg_21 ^ ^io_snd_data_21; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_22_T_1 = parity_data_snd_reg_22 ^ ^io_snd_data_22; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_23_T_1 = parity_data_snd_reg_23 ^ ^io_snd_data_23; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_24_T_1 = parity_data_snd_reg_24 ^ ^io_snd_data_24; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_25_T_1 = parity_data_snd_reg_25 ^ ^io_snd_data_25; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_26_T_1 = parity_data_snd_reg_26 ^ ^io_snd_data_26; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_27_T_1 = parity_data_snd_reg_27 ^ ^io_snd_data_27; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_28_T_1 = parity_data_snd_reg_28 ^ ^io_snd_data_28; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_29_T_1 = parity_data_snd_reg_29 ^ ^io_snd_data_29; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_30_T_1 = parity_data_snd_reg_30 ^ ^io_snd_data_30; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_31_T_1 = parity_data_snd_reg_31 ^ ^io_snd_data_31; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_32_T_1 = parity_data_snd_reg_32 ^ ^io_snd_data_32; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_33_T_1 = parity_data_snd_reg_33 ^ ^io_snd_data_33; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_34_T_1 = parity_data_snd_reg_34 ^ ^io_snd_data_34; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_35_T_1 = parity_data_snd_reg_35 ^ ^io_snd_data_35; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_36_T_1 = parity_data_snd_reg_36 ^ ^io_snd_data_36; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_37_T_1 = parity_data_snd_reg_37 ^ ^io_snd_data_37; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_38_T_1 = parity_data_snd_reg_38 ^ ^io_snd_data_38; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_39_T_1 = parity_data_snd_reg_39 ^ ^io_snd_data_39; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_40_T_1 = parity_data_snd_reg_40 ^ ^io_snd_data_40; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_41_T_1 = parity_data_snd_reg_41 ^ ^io_snd_data_41; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_42_T_1 = parity_data_snd_reg_42 ^ ^io_snd_data_42; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_43_T_1 = parity_data_snd_reg_43 ^ ^io_snd_data_43; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_44_T_1 = parity_data_snd_reg_44 ^ ^io_snd_data_44; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_45_T_1 = parity_data_snd_reg_45 ^ ^io_snd_data_45; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_46_T_1 = parity_data_snd_reg_46 ^ ^io_snd_data_46; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_47_T_1 = parity_data_snd_reg_47 ^ ^io_snd_data_47; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_48_T_1 = parity_data_snd_reg_48 ^ ^io_snd_data_48; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_49_T_1 = parity_data_snd_reg_49 ^ ^io_snd_data_49; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_50_T_1 = parity_data_snd_reg_50 ^ ^io_snd_data_50; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_51_T_1 = parity_data_snd_reg_51 ^ ^io_snd_data_51; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_52_T_1 = parity_data_snd_reg_52 ^ ^io_snd_data_52; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_53_T_1 = parity_data_snd_reg_53 ^ ^io_snd_data_53; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_54_T_1 = parity_data_snd_reg_54 ^ ^io_snd_data_54; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_55_T_1 = parity_data_snd_reg_55 ^ ^io_snd_data_55; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_56_T_1 = parity_data_snd_reg_56 ^ ^io_snd_data_56; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_57_T_1 = parity_data_snd_reg_57 ^ ^io_snd_data_57; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_58_T_1 = parity_data_snd_reg_58 ^ ^io_snd_data_58; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_59_T_1 = parity_data_snd_reg_59 ^ ^io_snd_data_59; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_60_T_1 = parity_data_snd_reg_60 ^ ^io_snd_data_60; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_61_T_1 = parity_data_snd_reg_61 ^ ^io_snd_data_61; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_62_T_1 = parity_data_snd_reg_62 ^ ^io_snd_data_62; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire  _parity_data_snd_reg_63_T_1 = parity_data_snd_reg_63 ^ ^io_snd_data_63; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 89:123]
  wire [18:0] _parity_dcount_snd_reg_T_1 = parity_dcount_snd_reg + 19'h40; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 117:56]
  wire [18:0] _GEN_1798 = parity_dcount_snd_reg == 19'h10000 & io_parity_rdy ? 19'h10000 : parity_dcount_snd_reg; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 119:69 145:31 47:27]
  wire [8:0] _GEN_1799 = parity_dcount_snd_reg == 19'h10000 & io_parity_rdy ? _T_5 : parity_pcount_snd_reg; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 119:69 146:31 48:27]
  wire [8:0] _T_21 = parity_pcount_rcv_reg + 9'h40; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 164:38]
  wire  _T_24 = parity_dcount_rcv_reg == 19'h10000; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 164:111]
  wire [18:0] _parity_dcount_rcv_reg_T_1 = parity_dcount_rcv_reg + 19'h40; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 206:56]
  wire [18:0] _GEN_4366 = _T_24 & io_rcv_data_vld ? 19'h10000 : parity_dcount_rcv_reg; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 209:71 237:31 242:31]
  wire [8:0] _GEN_4367 = _T_24 & io_rcv_data_vld ? _T_21 : parity_pcount_rcv_reg; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 209:71 238:31 243:31]
  assign io_parity_data_0 = {{7'd0}, parity_data_snd_reg_0}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_1 = {{7'd0}, parity_data_snd_reg_1}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_2 = {{7'd0}, parity_data_snd_reg_2}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_3 = {{7'd0}, parity_data_snd_reg_3}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_4 = {{7'd0}, parity_data_snd_reg_4}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_5 = {{7'd0}, parity_data_snd_reg_5}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_6 = {{7'd0}, parity_data_snd_reg_6}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_7 = {{7'd0}, parity_data_snd_reg_7}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_8 = {{7'd0}, parity_data_snd_reg_8}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_9 = {{7'd0}, parity_data_snd_reg_9}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_10 = {{7'd0}, parity_data_snd_reg_10}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_11 = {{7'd0}, parity_data_snd_reg_11}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_12 = {{7'd0}, parity_data_snd_reg_12}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_13 = {{7'd0}, parity_data_snd_reg_13}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_14 = {{7'd0}, parity_data_snd_reg_14}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_15 = {{7'd0}, parity_data_snd_reg_15}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_16 = {{7'd0}, parity_data_snd_reg_16}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_17 = {{7'd0}, parity_data_snd_reg_17}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_18 = {{7'd0}, parity_data_snd_reg_18}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_19 = {{7'd0}, parity_data_snd_reg_19}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_20 = {{7'd0}, parity_data_snd_reg_20}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_21 = {{7'd0}, parity_data_snd_reg_21}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_22 = {{7'd0}, parity_data_snd_reg_22}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_23 = {{7'd0}, parity_data_snd_reg_23}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_24 = {{7'd0}, parity_data_snd_reg_24}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_25 = {{7'd0}, parity_data_snd_reg_25}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_26 = {{7'd0}, parity_data_snd_reg_26}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_27 = {{7'd0}, parity_data_snd_reg_27}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_28 = {{7'd0}, parity_data_snd_reg_28}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_29 = {{7'd0}, parity_data_snd_reg_29}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_30 = {{7'd0}, parity_data_snd_reg_30}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_31 = {{7'd0}, parity_data_snd_reg_31}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_32 = {{7'd0}, parity_data_snd_reg_32}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_33 = {{7'd0}, parity_data_snd_reg_33}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_34 = {{7'd0}, parity_data_snd_reg_34}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_35 = {{7'd0}, parity_data_snd_reg_35}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_36 = {{7'd0}, parity_data_snd_reg_36}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_37 = {{7'd0}, parity_data_snd_reg_37}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_38 = {{7'd0}, parity_data_snd_reg_38}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_39 = {{7'd0}, parity_data_snd_reg_39}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_40 = {{7'd0}, parity_data_snd_reg_40}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_41 = {{7'd0}, parity_data_snd_reg_41}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_42 = {{7'd0}, parity_data_snd_reg_42}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_43 = {{7'd0}, parity_data_snd_reg_43}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_44 = {{7'd0}, parity_data_snd_reg_44}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_45 = {{7'd0}, parity_data_snd_reg_45}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_46 = {{7'd0}, parity_data_snd_reg_46}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_47 = {{7'd0}, parity_data_snd_reg_47}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_48 = {{7'd0}, parity_data_snd_reg_48}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_49 = {{7'd0}, parity_data_snd_reg_49}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_50 = {{7'd0}, parity_data_snd_reg_50}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_51 = {{7'd0}, parity_data_snd_reg_51}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_52 = {{7'd0}, parity_data_snd_reg_52}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_53 = {{7'd0}, parity_data_snd_reg_53}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_54 = {{7'd0}, parity_data_snd_reg_54}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_55 = {{7'd0}, parity_data_snd_reg_55}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_56 = {{7'd0}, parity_data_snd_reg_56}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_57 = {{7'd0}, parity_data_snd_reg_57}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_58 = {{7'd0}, parity_data_snd_reg_58}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_59 = {{7'd0}, parity_data_snd_reg_59}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_60 = {{7'd0}, parity_data_snd_reg_60}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_61 = {{7'd0}, parity_data_snd_reg_61}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_62 = {{7'd0}, parity_data_snd_reg_62}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_data_63 = {{7'd0}, parity_data_snd_reg_63}; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 150:27]
  assign io_parity_insert = parity_dcount_snd_reg == 19'h10000; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 152:47]
  assign io_parity_check = parity_dcount_rcv_reg == 19'h10000; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 247:47]
  always @(posedge clock) begin
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_0 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_0 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_0 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_0 <= _parity_data_snd_reg_0_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_1 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_1 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_1 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_1 <= _parity_data_snd_reg_1_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_2 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_2 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_2 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_2 <= _parity_data_snd_reg_2_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_3 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_3 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_3 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_3 <= _parity_data_snd_reg_3_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_4 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_4 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_4 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_4 <= _parity_data_snd_reg_4_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_5 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_5 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_5 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_5 <= _parity_data_snd_reg_5_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_6 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_6 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_6 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_6 <= _parity_data_snd_reg_6_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_7 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_7 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_7 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_7 <= _parity_data_snd_reg_7_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_8 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_8 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_8 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_8 <= _parity_data_snd_reg_8_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_9 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_9 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_9 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_9 <= _parity_data_snd_reg_9_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_10 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_10 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_10 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_10 <= _parity_data_snd_reg_10_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_11 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_11 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_11 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_11 <= _parity_data_snd_reg_11_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_12 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_12 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_12 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_12 <= _parity_data_snd_reg_12_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_13 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_13 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_13 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_13 <= _parity_data_snd_reg_13_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_14 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_14 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_14 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_14 <= _parity_data_snd_reg_14_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_15 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_15 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_15 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_15 <= _parity_data_snd_reg_15_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_16 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_16 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_16 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_16 <= _parity_data_snd_reg_16_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_17 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_17 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_17 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_17 <= _parity_data_snd_reg_17_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_18 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_18 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_18 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_18 <= _parity_data_snd_reg_18_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_19 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_19 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_19 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_19 <= _parity_data_snd_reg_19_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_20 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_20 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_20 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_20 <= _parity_data_snd_reg_20_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_21 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_21 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_21 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_21 <= _parity_data_snd_reg_21_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_22 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_22 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_22 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_22 <= _parity_data_snd_reg_22_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_23 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_23 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_23 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_23 <= _parity_data_snd_reg_23_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_24 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_24 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_24 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_24 <= _parity_data_snd_reg_24_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_25 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_25 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_25 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_25 <= _parity_data_snd_reg_25_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_26 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_26 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_26 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_26 <= _parity_data_snd_reg_26_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_27 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_27 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_27 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_27 <= _parity_data_snd_reg_27_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_28 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_28 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_28 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_28 <= _parity_data_snd_reg_28_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_29 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_29 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_29 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_29 <= _parity_data_snd_reg_29_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_30 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_30 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_30 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_30 <= _parity_data_snd_reg_30_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_31 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_31 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_31 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_31 <= _parity_data_snd_reg_31_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_32 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_32 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_32 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_32 <= _parity_data_snd_reg_32_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_33 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_33 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_33 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_33 <= _parity_data_snd_reg_33_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_34 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_34 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_34 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_34 <= _parity_data_snd_reg_34_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_35 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_35 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_35 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_35 <= _parity_data_snd_reg_35_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_36 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_36 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_36 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_36 <= _parity_data_snd_reg_36_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_37 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_37 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_37 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_37 <= _parity_data_snd_reg_37_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_38 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_38 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_38 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_38 <= _parity_data_snd_reg_38_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_39 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_39 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_39 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_39 <= _parity_data_snd_reg_39_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_40 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_40 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_40 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_40 <= _parity_data_snd_reg_40_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_41 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_41 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_41 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_41 <= _parity_data_snd_reg_41_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_42 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_42 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_42 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_42 <= _parity_data_snd_reg_42_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_43 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_43 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_43 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_43 <= _parity_data_snd_reg_43_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_44 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_44 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_44 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_44 <= _parity_data_snd_reg_44_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_45 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_45 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_45 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_45 <= _parity_data_snd_reg_45_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_46 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_46 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_46 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_46 <= _parity_data_snd_reg_46_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_47 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_47 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_47 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_47 <= _parity_data_snd_reg_47_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_48 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_48 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_48 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_48 <= _parity_data_snd_reg_48_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_49 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_49 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_49 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_49 <= _parity_data_snd_reg_49_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_50 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_50 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_50 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_50 <= _parity_data_snd_reg_50_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_51 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_51 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_51 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_51 <= _parity_data_snd_reg_51_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_52 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_52 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_52 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_52 <= _parity_data_snd_reg_52_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_53 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_53 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_53 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_53 <= _parity_data_snd_reg_53_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_54 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_54 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_54 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_54 <= _parity_data_snd_reg_54_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_55 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_55 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_55 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_55 <= _parity_data_snd_reg_55_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_56 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_56 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_56 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_56 <= _parity_data_snd_reg_56_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_57 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_57 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_57 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_57 <= _parity_data_snd_reg_57_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_58 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_58 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_58 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_58 <= _parity_data_snd_reg_58_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_59 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_59 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_59 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_59 <= _parity_data_snd_reg_59_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_60 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_60 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_60 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_60 <= _parity_data_snd_reg_60_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_61 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_61 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_61 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_61 <= _parity_data_snd_reg_61_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_62 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_62 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_62 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_62 <= _parity_data_snd_reg_62_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
      parity_data_snd_reg_63 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 37:38]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_data_snd_reg_63 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 72:36]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_data_snd_reg_63 <= 1'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 78:36]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_data_snd_reg_63 <= _parity_data_snd_reg_63_T_1;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 40:40]
      parity_dcount_snd_reg <= 19'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 40:40]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_dcount_snd_reg <= 19'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 74:31]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_dcount_snd_reg <= 19'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 80:31]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_dcount_snd_reg <= _parity_dcount_snd_reg_T_1; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 117:31]
    end else begin
      parity_dcount_snd_reg <= _GEN_1798;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 41:40]
      parity_pcount_snd_reg <= 9'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 41:40]
    end else if (io_rdi_state != 4'h1) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 70:43]
      parity_pcount_snd_reg <= 9'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 75:31]
    end else if (_T_5 == 9'h40 & io_parity_rdy) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 76:84]
      parity_pcount_snd_reg <= 9'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 81:31]
    end else if (io_snd_data_vld & io_parity_tx_enable & parity_dcount_snd_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 82:94]
      parity_pcount_snd_reg <= 9'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 118:31]
    end else begin
      parity_pcount_snd_reg <= _GEN_1799;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 42:40]
      parity_dcount_rcv_reg <= 19'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 42:40]
    end else if (_T_3) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 157:43]
      parity_dcount_rcv_reg <= 19'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 161:31]
    end else if (_T_21 == 9'h40 & io_rcv_data_vld & parity_dcount_rcv_reg == 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 164:125]
      parity_dcount_rcv_reg <= 19'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 168:31]
    end else if (io_rcv_data_vld & io_parity_rx_enable & parity_dcount_rcv_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 171:94]
      parity_dcount_rcv_reg <= _parity_dcount_rcv_reg_T_1; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 206:31]
    end else begin
      parity_dcount_rcv_reg <= _GEN_4366;
    end
    if (reset) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 43:40]
      parity_pcount_rcv_reg <= 9'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 43:40]
    end else if (_T_3) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 157:43]
      parity_pcount_rcv_reg <= 9'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 162:31]
    end else if (_T_21 == 9'h40 & io_rcv_data_vld & parity_dcount_rcv_reg == 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 164:125]
      parity_pcount_rcv_reg <= 9'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 169:31]
    end else if (io_rcv_data_vld & io_parity_rx_enable & parity_dcount_rcv_reg != 19'h10000) begin // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 171:94]
      parity_pcount_rcv_reg <= 9'h0; // @[\\src\\main\\scala\\d2dadapter\\ParityGenerator.scala 207:31]
    end else begin
      parity_pcount_rcv_reg <= _GEN_4367;
    end
  end
// Register and memory initialization
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
`ifdef FIRRTL_BEFORE_INITIAL
`FIRRTL_BEFORE_INITIAL
`endif
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
`ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  parity_data_snd_reg_0 = _RAND_0[0:0];
  _RAND_1 = {1{`RANDOM}};
  parity_data_snd_reg_1 = _RAND_1[0:0];
  _RAND_2 = {1{`RANDOM}};
  parity_data_snd_reg_2 = _RAND_2[0:0];
  _RAND_3 = {1{`RANDOM}};
  parity_data_snd_reg_3 = _RAND_3[0:0];
  _RAND_4 = {1{`RANDOM}};
  parity_data_snd_reg_4 = _RAND_4[0:0];
  _RAND_5 = {1{`RANDOM}};
  parity_data_snd_reg_5 = _RAND_5[0:0];
  _RAND_6 = {1{`RANDOM}};
  parity_data_snd_reg_6 = _RAND_6[0:0];
  _RAND_7 = {1{`RANDOM}};
  parity_data_snd_reg_7 = _RAND_7[0:0];
  _RAND_8 = {1{`RANDOM}};
  parity_data_snd_reg_8 = _RAND_8[0:0];
  _RAND_9 = {1{`RANDOM}};
  parity_data_snd_reg_9 = _RAND_9[0:0];
  _RAND_10 = {1{`RANDOM}};
  parity_data_snd_reg_10 = _RAND_10[0:0];
  _RAND_11 = {1{`RANDOM}};
  parity_data_snd_reg_11 = _RAND_11[0:0];
  _RAND_12 = {1{`RANDOM}};
  parity_data_snd_reg_12 = _RAND_12[0:0];
  _RAND_13 = {1{`RANDOM}};
  parity_data_snd_reg_13 = _RAND_13[0:0];
  _RAND_14 = {1{`RANDOM}};
  parity_data_snd_reg_14 = _RAND_14[0:0];
  _RAND_15 = {1{`RANDOM}};
  parity_data_snd_reg_15 = _RAND_15[0:0];
  _RAND_16 = {1{`RANDOM}};
  parity_data_snd_reg_16 = _RAND_16[0:0];
  _RAND_17 = {1{`RANDOM}};
  parity_data_snd_reg_17 = _RAND_17[0:0];
  _RAND_18 = {1{`RANDOM}};
  parity_data_snd_reg_18 = _RAND_18[0:0];
  _RAND_19 = {1{`RANDOM}};
  parity_data_snd_reg_19 = _RAND_19[0:0];
  _RAND_20 = {1{`RANDOM}};
  parity_data_snd_reg_20 = _RAND_20[0:0];
  _RAND_21 = {1{`RANDOM}};
  parity_data_snd_reg_21 = _RAND_21[0:0];
  _RAND_22 = {1{`RANDOM}};
  parity_data_snd_reg_22 = _RAND_22[0:0];
  _RAND_23 = {1{`RANDOM}};
  parity_data_snd_reg_23 = _RAND_23[0:0];
  _RAND_24 = {1{`RANDOM}};
  parity_data_snd_reg_24 = _RAND_24[0:0];
  _RAND_25 = {1{`RANDOM}};
  parity_data_snd_reg_25 = _RAND_25[0:0];
  _RAND_26 = {1{`RANDOM}};
  parity_data_snd_reg_26 = _RAND_26[0:0];
  _RAND_27 = {1{`RANDOM}};
  parity_data_snd_reg_27 = _RAND_27[0:0];
  _RAND_28 = {1{`RANDOM}};
  parity_data_snd_reg_28 = _RAND_28[0:0];
  _RAND_29 = {1{`RANDOM}};
  parity_data_snd_reg_29 = _RAND_29[0:0];
  _RAND_30 = {1{`RANDOM}};
  parity_data_snd_reg_30 = _RAND_30[0:0];
  _RAND_31 = {1{`RANDOM}};
  parity_data_snd_reg_31 = _RAND_31[0:0];
  _RAND_32 = {1{`RANDOM}};
  parity_data_snd_reg_32 = _RAND_32[0:0];
  _RAND_33 = {1{`RANDOM}};
  parity_data_snd_reg_33 = _RAND_33[0:0];
  _RAND_34 = {1{`RANDOM}};
  parity_data_snd_reg_34 = _RAND_34[0:0];
  _RAND_35 = {1{`RANDOM}};
  parity_data_snd_reg_35 = _RAND_35[0:0];
  _RAND_36 = {1{`RANDOM}};
  parity_data_snd_reg_36 = _RAND_36[0:0];
  _RAND_37 = {1{`RANDOM}};
  parity_data_snd_reg_37 = _RAND_37[0:0];
  _RAND_38 = {1{`RANDOM}};
  parity_data_snd_reg_38 = _RAND_38[0:0];
  _RAND_39 = {1{`RANDOM}};
  parity_data_snd_reg_39 = _RAND_39[0:0];
  _RAND_40 = {1{`RANDOM}};
  parity_data_snd_reg_40 = _RAND_40[0:0];
  _RAND_41 = {1{`RANDOM}};
  parity_data_snd_reg_41 = _RAND_41[0:0];
  _RAND_42 = {1{`RANDOM}};
  parity_data_snd_reg_42 = _RAND_42[0:0];
  _RAND_43 = {1{`RANDOM}};
  parity_data_snd_reg_43 = _RAND_43[0:0];
  _RAND_44 = {1{`RANDOM}};
  parity_data_snd_reg_44 = _RAND_44[0:0];
  _RAND_45 = {1{`RANDOM}};
  parity_data_snd_reg_45 = _RAND_45[0:0];
  _RAND_46 = {1{`RANDOM}};
  parity_data_snd_reg_46 = _RAND_46[0:0];
  _RAND_47 = {1{`RANDOM}};
  parity_data_snd_reg_47 = _RAND_47[0:0];
  _RAND_48 = {1{`RANDOM}};
  parity_data_snd_reg_48 = _RAND_48[0:0];
  _RAND_49 = {1{`RANDOM}};
  parity_data_snd_reg_49 = _RAND_49[0:0];
  _RAND_50 = {1{`RANDOM}};
  parity_data_snd_reg_50 = _RAND_50[0:0];
  _RAND_51 = {1{`RANDOM}};
  parity_data_snd_reg_51 = _RAND_51[0:0];
  _RAND_52 = {1{`RANDOM}};
  parity_data_snd_reg_52 = _RAND_52[0:0];
  _RAND_53 = {1{`RANDOM}};
  parity_data_snd_reg_53 = _RAND_53[0:0];
  _RAND_54 = {1{`RANDOM}};
  parity_data_snd_reg_54 = _RAND_54[0:0];
  _RAND_55 = {1{`RANDOM}};
  parity_data_snd_reg_55 = _RAND_55[0:0];
  _RAND_56 = {1{`RANDOM}};
  parity_data_snd_reg_56 = _RAND_56[0:0];
  _RAND_57 = {1{`RANDOM}};
  parity_data_snd_reg_57 = _RAND_57[0:0];
  _RAND_58 = {1{`RANDOM}};
  parity_data_snd_reg_58 = _RAND_58[0:0];
  _RAND_59 = {1{`RANDOM}};
  parity_data_snd_reg_59 = _RAND_59[0:0];
  _RAND_60 = {1{`RANDOM}};
  parity_data_snd_reg_60 = _RAND_60[0:0];
  _RAND_61 = {1{`RANDOM}};
  parity_data_snd_reg_61 = _RAND_61[0:0];
  _RAND_62 = {1{`RANDOM}};
  parity_data_snd_reg_62 = _RAND_62[0:0];
  _RAND_63 = {1{`RANDOM}};
  parity_data_snd_reg_63 = _RAND_63[0:0];
  _RAND_64 = {1{`RANDOM}};
  parity_dcount_snd_reg = _RAND_64[18:0];
  _RAND_65 = {1{`RANDOM}};
  parity_pcount_snd_reg = _RAND_65[8:0];
  _RAND_66 = {1{`RANDOM}};
  parity_dcount_rcv_reg = _RAND_66[18:0];
  _RAND_67 = {1{`RANDOM}};
  parity_pcount_rcv_reg = _RAND_67[8:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
endmodule
module D2DAdapter(
  input          clock,
  input          reset,
  output         io_fdi_lpData_ready, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_fdi_lpData_valid, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_fdi_lpData_irdy, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input  [511:0] io_fdi_lpData_bits, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_fdi_plData_valid, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output [511:0] io_fdi_plData_bits, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_fdi_lpRetimerCrd, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_fdi_lpCorruptCrc, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_fdi_lpDllp_valid, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input  [127:0] io_fdi_lpDllp_bits, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_fdi_lpDllpOfc, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_fdi_lpStream_protoStack, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input  [2:0]   io_fdi_lpStream_protoType, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_fdi_plRetimerCrd, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_fdi_plDllp_valid, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output [127:0] io_fdi_plDllp_bits, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_fdi_plDllpOfc, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_fdi_plStream_protoStack, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output [2:0]   io_fdi_plStream_protoType, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_fdi_plFlitCancel, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input  [3:0]   io_fdi_lpStateReq, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_fdi_lpLinkError, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output [3:0]   io_fdi_plStateStatus, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_fdi_plInbandPres, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_fdi_plError, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_fdi_plCerror, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_fdi_plNfError, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_fdi_plTrainError, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_fdi_plRxActiveReq, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_fdi_lpRxActiveStatus, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output [2:0]   io_fdi_plProtocol, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output [2:0]   io_fdi_plProtocolFlitFormat, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_fdi_plProtocolValid, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_fdi_plStallReq, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_fdi_lpStallAck, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_fdi_plPhyInRecenter, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_fdi_plPhyInL1, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_fdi_plPhyInL2, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output [2:0]   io_fdi_plSpeedMode, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output [2:0]   io_fdi_plLinkWidth, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_fdi_plClkReq, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_fdi_lpClkAck, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_fdi_lpWakeReq, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_fdi_plWakeAck, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_fdi_plConfig_valid, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output [127:0] io_fdi_plConfig_bits, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_fdi_plConfigCredit, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_fdi_lpConfig_valid, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input  [127:0] io_fdi_lpConfig_bits, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_fdi_lpConfigCredit, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_rdi_lpData_ready, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_rdi_lpData_valid, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_rdi_lpData_irdy, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output [511:0] io_rdi_lpData_bits, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_rdi_plData_valid, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input  [511:0] io_rdi_plData_bits, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_rdi_lpRetimerCrd, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_rdi_plRetimerCrd, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output [3:0]   io_rdi_lpStateReq, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_rdi_lpLinkError, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input  [3:0]   io_rdi_plStateStatus, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_rdi_plInbandPres, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_rdi_plError, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_rdi_plCorrectableError, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_rdi_plNonFatalError, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_rdi_plTrainError, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_rdi_plPhyInRecenter, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_rdi_plStallReq, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_rdi_lpStallAck, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input  [2:0]   io_rdi_plSpeedMode, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input  [2:0]   io_rdi_plLinkWidth, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_rdi_plClkReq, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_rdi_lpClkAck, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_rdi_lpWakeReq, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_rdi_plWakeAck, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_rdi_plConfig_valid, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input  [127:0] io_rdi_plConfig_bits, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_rdi_plConfigCredit, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output         io_rdi_lpConfig_valid, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  output [127:0] io_rdi_lpConfig_bits, // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
  input          io_rdi_lpConfigCredit // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 30:16]
);
  wire  link_manager_clock; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 35:30]
  wire  link_manager_reset; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 35:30]
  wire [3:0] link_manager_io_fdi_lp_state_req; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 35:30]
  wire  link_manager_io_fdi_lp_linkerror; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 35:30]
  wire  link_manager_io_fdi_lp_rx_active_sts; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 35:30]
  wire [3:0] link_manager_io_fdi_pl_state_sts; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 35:30]
  wire  link_manager_io_fdi_pl_rx_active_req; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 35:30]
  wire  link_manager_io_fdi_pl_inband_pres; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 35:30]
  wire  link_manager_io_rdi_lp_linkerror; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 35:30]
  wire [3:0] link_manager_io_rdi_lp_state_req; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 35:30]
  wire [3:0] link_manager_io_rdi_pl_state_sts; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 35:30]
  wire  link_manager_io_rdi_pl_inband_pres; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 35:30]
  wire [5:0] link_manager_io_sb_snd; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 35:30]
  wire [5:0] link_manager_io_sb_rcv; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 35:30]
  wire  link_manager_io_sb_rdy; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 35:30]
  wire  link_manager_io_linkmgmt_stallreq; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 35:30]
  wire  link_manager_io_linkmgmt_stalldone; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 35:30]
  wire  link_manager_io_parity_rx_enable; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 35:30]
  wire  link_manager_io_parity_tx_enable; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 35:30]
  wire  fdi_stall_handler_clock; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 36:35]
  wire  fdi_stall_handler_reset; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 36:35]
  wire  fdi_stall_handler_io_linkmgmt_stallreq; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 36:35]
  wire  fdi_stall_handler_io_linkmgmt_stalldone; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 36:35]
  wire  fdi_stall_handler_io_fdi_pl_stallreq; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 36:35]
  wire  fdi_stall_handler_io_fdi_lp_stallack; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 36:35]
  wire  rdi_stall_handler_clock; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 37:35]
  wire  rdi_stall_handler_reset; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 37:35]
  wire  rdi_stall_handler_io_mainband_stallreq; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 37:35]
  wire  rdi_stall_handler_io_mainband_stalldone; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 37:35]
  wire  rdi_stall_handler_io_rdi_pl_stallreq; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 37:35]
  wire  rdi_stall_handler_io_rdi_lp_stallack; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 37:35]
  wire  d2d_sideband_clock; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 39:30]
  wire  d2d_sideband_reset; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 39:30]
  wire [127:0] d2d_sideband_io_fdi_pl_cfg; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 39:30]
  wire  d2d_sideband_io_fdi_pl_cfg_vld; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 39:30]
  wire  d2d_sideband_io_fdi_pl_cfg_crd; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 39:30]
  wire [127:0] d2d_sideband_io_fdi_lp_cfg; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 39:30]
  wire  d2d_sideband_io_fdi_lp_cfg_vld; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 39:30]
  wire  d2d_sideband_io_fdi_lp_cfg_crd; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 39:30]
  wire [127:0] d2d_sideband_io_rdi_pl_cfg; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 39:30]
  wire  d2d_sideband_io_rdi_pl_cfg_vld; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 39:30]
  wire  d2d_sideband_io_rdi_pl_cfg_crd; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 39:30]
  wire [127:0] d2d_sideband_io_rdi_lp_cfg; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 39:30]
  wire  d2d_sideband_io_rdi_lp_cfg_vld; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 39:30]
  wire  d2d_sideband_io_rdi_lp_cfg_crd; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 39:30]
  wire [5:0] d2d_sideband_io_sideband_rcv; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 39:30]
  wire [5:0] d2d_sideband_io_sideband_snt; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 39:30]
  wire  d2d_sideband_io_sideband_rdy; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 39:30]
  wire  d2d_mainband_clock; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire  d2d_mainband_reset; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire  d2d_mainband_io_fdi_lp_irdy; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire  d2d_mainband_io_fdi_lp_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire [511:0] d2d_mainband_io_fdi_lp_data; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire  d2d_mainband_io_fdi_pl_trdy; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire  d2d_mainband_io_fdi_pl_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire [511:0] d2d_mainband_io_fdi_pl_data; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire  d2d_mainband_io_rdi_lp_irdy; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire  d2d_mainband_io_rdi_lp_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire [511:0] d2d_mainband_io_rdi_lp_data; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire  d2d_mainband_io_rdi_pl_trdy; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire  d2d_mainband_io_rdi_pl_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire [511:0] d2d_mainband_io_rdi_pl_data; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire [3:0] d2d_mainband_io_d2d_state; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire  d2d_mainband_io_mainband_stallreq; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire  d2d_mainband_io_mainband_stalldone; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire [511:0] d2d_mainband_io_snd_data; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire  d2d_mainband_io_snd_data_vld; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire  d2d_mainband_io_rcv_data_vld; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire  d2d_mainband_io_parity_insert; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire [511:0] d2d_mainband_io_parity_data; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire  d2d_mainband_io_parity_rdy; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire  d2d_mainband_io_parity_check; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
  wire  parity_generator_clock; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire  parity_generator_reset; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_0; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_1; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_2; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_3; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_4; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_5; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_6; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_7; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_8; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_9; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_10; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_11; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_12; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_13; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_14; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_15; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_16; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_17; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_18; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_19; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_20; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_21; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_22; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_23; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_24; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_25; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_26; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_27; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_28; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_29; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_30; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_31; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_32; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_33; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_34; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_35; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_36; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_37; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_38; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_39; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_40; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_41; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_42; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_43; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_44; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_45; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_46; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_47; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_48; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_49; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_50; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_51; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_52; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_53; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_54; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_55; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_56; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_57; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_58; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_59; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_60; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_61; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_62; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_snd_data_63; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire  parity_generator_io_snd_data_vld; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire  parity_generator_io_rcv_data_vld; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_0; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_1; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_2; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_3; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_4; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_5; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_6; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_7; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_8; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_9; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_10; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_11; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_12; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_13; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_14; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_15; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_16; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_17; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_18; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_19; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_20; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_21; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_22; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_23; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_24; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_25; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_26; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_27; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_28; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_29; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_30; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_31; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_32; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_33; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_34; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_35; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_36; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_37; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_38; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_39; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_40; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_41; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_42; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_43; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_44; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_45; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_46; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_47; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_48; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_49; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_50; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_51; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_52; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_53; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_54; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_55; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_56; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_57; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_58; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_59; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_60; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_61; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_62; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [7:0] parity_generator_io_parity_data_63; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire  parity_generator_io_parity_insert; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire  parity_generator_io_parity_check; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire  parity_generator_io_parity_rdy; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [3:0] parity_generator_io_rdi_state; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire  parity_generator_io_parity_rx_enable; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire  parity_generator_io_parity_tx_enable; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
  wire [511:0] _WIRE_1 = d2d_mainband_io_snd_data; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:{70,70}]
  wire [63:0] d2d_mainband_io_parity_data_lo_lo_lo = {parity_generator_io_parity_data_7,
    parity_generator_io_parity_data_6,parity_generator_io_parity_data_5,parity_generator_io_parity_data_4,
    parity_generator_io_parity_data_3,parity_generator_io_parity_data_2,parity_generator_io_parity_data_1,
    parity_generator_io_parity_data_0}; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 158:76]
  wire [127:0] d2d_mainband_io_parity_data_lo_lo = {parity_generator_io_parity_data_15,
    parity_generator_io_parity_data_14,parity_generator_io_parity_data_13,parity_generator_io_parity_data_12,
    parity_generator_io_parity_data_11,parity_generator_io_parity_data_10,parity_generator_io_parity_data_9,
    parity_generator_io_parity_data_8,d2d_mainband_io_parity_data_lo_lo_lo}; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 158:76]
  wire [63:0] d2d_mainband_io_parity_data_lo_hi_lo = {parity_generator_io_parity_data_23,
    parity_generator_io_parity_data_22,parity_generator_io_parity_data_21,parity_generator_io_parity_data_20,
    parity_generator_io_parity_data_19,parity_generator_io_parity_data_18,parity_generator_io_parity_data_17,
    parity_generator_io_parity_data_16}; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 158:76]
  wire [255:0] d2d_mainband_io_parity_data_lo = {parity_generator_io_parity_data_31,parity_generator_io_parity_data_30,
    parity_generator_io_parity_data_29,parity_generator_io_parity_data_28,parity_generator_io_parity_data_27,
    parity_generator_io_parity_data_26,parity_generator_io_parity_data_25,parity_generator_io_parity_data_24,
    d2d_mainband_io_parity_data_lo_hi_lo,d2d_mainband_io_parity_data_lo_lo}; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 158:76]
  wire [63:0] d2d_mainband_io_parity_data_hi_lo_lo = {parity_generator_io_parity_data_39,
    parity_generator_io_parity_data_38,parity_generator_io_parity_data_37,parity_generator_io_parity_data_36,
    parity_generator_io_parity_data_35,parity_generator_io_parity_data_34,parity_generator_io_parity_data_33,
    parity_generator_io_parity_data_32}; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 158:76]
  wire [127:0] d2d_mainband_io_parity_data_hi_lo = {parity_generator_io_parity_data_47,
    parity_generator_io_parity_data_46,parity_generator_io_parity_data_45,parity_generator_io_parity_data_44,
    parity_generator_io_parity_data_43,parity_generator_io_parity_data_42,parity_generator_io_parity_data_41,
    parity_generator_io_parity_data_40,d2d_mainband_io_parity_data_hi_lo_lo}; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 158:76]
  wire [63:0] d2d_mainband_io_parity_data_hi_hi_lo = {parity_generator_io_parity_data_55,
    parity_generator_io_parity_data_54,parity_generator_io_parity_data_53,parity_generator_io_parity_data_52,
    parity_generator_io_parity_data_51,parity_generator_io_parity_data_50,parity_generator_io_parity_data_49,
    parity_generator_io_parity_data_48}; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 158:76]
  wire [255:0] d2d_mainband_io_parity_data_hi = {parity_generator_io_parity_data_63,parity_generator_io_parity_data_62,
    parity_generator_io_parity_data_61,parity_generator_io_parity_data_60,parity_generator_io_parity_data_59,
    parity_generator_io_parity_data_58,parity_generator_io_parity_data_57,parity_generator_io_parity_data_56,
    d2d_mainband_io_parity_data_hi_hi_lo,d2d_mainband_io_parity_data_hi_lo}; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 158:76]
  LinkManagementController link_manager ( // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 35:30]
    .clock(link_manager_clock),
    .reset(link_manager_reset),
    .io_fdi_lp_state_req(link_manager_io_fdi_lp_state_req),
    .io_fdi_lp_linkerror(link_manager_io_fdi_lp_linkerror),
    .io_fdi_lp_rx_active_sts(link_manager_io_fdi_lp_rx_active_sts),
    .io_fdi_pl_state_sts(link_manager_io_fdi_pl_state_sts),
    .io_fdi_pl_rx_active_req(link_manager_io_fdi_pl_rx_active_req),
    .io_fdi_pl_inband_pres(link_manager_io_fdi_pl_inband_pres),
    .io_rdi_lp_linkerror(link_manager_io_rdi_lp_linkerror),
    .io_rdi_lp_state_req(link_manager_io_rdi_lp_state_req),
    .io_rdi_pl_state_sts(link_manager_io_rdi_pl_state_sts),
    .io_rdi_pl_inband_pres(link_manager_io_rdi_pl_inband_pres),
    .io_sb_snd(link_manager_io_sb_snd),
    .io_sb_rcv(link_manager_io_sb_rcv),
    .io_sb_rdy(link_manager_io_sb_rdy),
    .io_linkmgmt_stallreq(link_manager_io_linkmgmt_stallreq),
    .io_linkmgmt_stalldone(link_manager_io_linkmgmt_stalldone),
    .io_parity_rx_enable(link_manager_io_parity_rx_enable),
    .io_parity_tx_enable(link_manager_io_parity_tx_enable)
  );
  FDIStallHandler fdi_stall_handler ( // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 36:35]
    .clock(fdi_stall_handler_clock),
    .reset(fdi_stall_handler_reset),
    .io_linkmgmt_stallreq(fdi_stall_handler_io_linkmgmt_stallreq),
    .io_linkmgmt_stalldone(fdi_stall_handler_io_linkmgmt_stalldone),
    .io_fdi_pl_stallreq(fdi_stall_handler_io_fdi_pl_stallreq),
    .io_fdi_lp_stallack(fdi_stall_handler_io_fdi_lp_stallack)
  );
  RDIStallHandler rdi_stall_handler ( // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 37:35]
    .clock(rdi_stall_handler_clock),
    .reset(rdi_stall_handler_reset),
    .io_mainband_stallreq(rdi_stall_handler_io_mainband_stallreq),
    .io_mainband_stalldone(rdi_stall_handler_io_mainband_stalldone),
    .io_rdi_pl_stallreq(rdi_stall_handler_io_rdi_pl_stallreq),
    .io_rdi_lp_stallack(rdi_stall_handler_io_rdi_lp_stallack)
  );
  D2DSidebandModule d2d_sideband ( // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 39:30]
    .clock(d2d_sideband_clock),
    .reset(d2d_sideband_reset),
    .io_fdi_pl_cfg(d2d_sideband_io_fdi_pl_cfg),
    .io_fdi_pl_cfg_vld(d2d_sideband_io_fdi_pl_cfg_vld),
    .io_fdi_pl_cfg_crd(d2d_sideband_io_fdi_pl_cfg_crd),
    .io_fdi_lp_cfg(d2d_sideband_io_fdi_lp_cfg),
    .io_fdi_lp_cfg_vld(d2d_sideband_io_fdi_lp_cfg_vld),
    .io_fdi_lp_cfg_crd(d2d_sideband_io_fdi_lp_cfg_crd),
    .io_rdi_pl_cfg(d2d_sideband_io_rdi_pl_cfg),
    .io_rdi_pl_cfg_vld(d2d_sideband_io_rdi_pl_cfg_vld),
    .io_rdi_pl_cfg_crd(d2d_sideband_io_rdi_pl_cfg_crd),
    .io_rdi_lp_cfg(d2d_sideband_io_rdi_lp_cfg),
    .io_rdi_lp_cfg_vld(d2d_sideband_io_rdi_lp_cfg_vld),
    .io_rdi_lp_cfg_crd(d2d_sideband_io_rdi_lp_cfg_crd),
    .io_sideband_rcv(d2d_sideband_io_sideband_rcv),
    .io_sideband_snt(d2d_sideband_io_sideband_snt),
    .io_sideband_rdy(d2d_sideband_io_sideband_rdy)
  );
  D2DMainbandModule d2d_mainband ( // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 40:30]
    .clock(d2d_mainband_clock),
    .reset(d2d_mainband_reset),
    .io_fdi_lp_irdy(d2d_mainband_io_fdi_lp_irdy),
    .io_fdi_lp_valid(d2d_mainband_io_fdi_lp_valid),
    .io_fdi_lp_data(d2d_mainband_io_fdi_lp_data),
    .io_fdi_pl_trdy(d2d_mainband_io_fdi_pl_trdy),
    .io_fdi_pl_valid(d2d_mainband_io_fdi_pl_valid),
    .io_fdi_pl_data(d2d_mainband_io_fdi_pl_data),
    .io_rdi_lp_irdy(d2d_mainband_io_rdi_lp_irdy),
    .io_rdi_lp_valid(d2d_mainband_io_rdi_lp_valid),
    .io_rdi_lp_data(d2d_mainband_io_rdi_lp_data),
    .io_rdi_pl_trdy(d2d_mainband_io_rdi_pl_trdy),
    .io_rdi_pl_valid(d2d_mainband_io_rdi_pl_valid),
    .io_rdi_pl_data(d2d_mainband_io_rdi_pl_data),
    .io_d2d_state(d2d_mainband_io_d2d_state),
    .io_mainband_stallreq(d2d_mainband_io_mainband_stallreq),
    .io_mainband_stalldone(d2d_mainband_io_mainband_stalldone),
    .io_snd_data(d2d_mainband_io_snd_data),
    .io_snd_data_vld(d2d_mainband_io_snd_data_vld),
    .io_rcv_data_vld(d2d_mainband_io_rcv_data_vld),
    .io_parity_insert(d2d_mainband_io_parity_insert),
    .io_parity_data(d2d_mainband_io_parity_data),
    .io_parity_rdy(d2d_mainband_io_parity_rdy),
    .io_parity_check(d2d_mainband_io_parity_check)
  );
  ParityGenerator parity_generator ( // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 42:34]
    .clock(parity_generator_clock),
    .reset(parity_generator_reset),
    .io_snd_data_0(parity_generator_io_snd_data_0),
    .io_snd_data_1(parity_generator_io_snd_data_1),
    .io_snd_data_2(parity_generator_io_snd_data_2),
    .io_snd_data_3(parity_generator_io_snd_data_3),
    .io_snd_data_4(parity_generator_io_snd_data_4),
    .io_snd_data_5(parity_generator_io_snd_data_5),
    .io_snd_data_6(parity_generator_io_snd_data_6),
    .io_snd_data_7(parity_generator_io_snd_data_7),
    .io_snd_data_8(parity_generator_io_snd_data_8),
    .io_snd_data_9(parity_generator_io_snd_data_9),
    .io_snd_data_10(parity_generator_io_snd_data_10),
    .io_snd_data_11(parity_generator_io_snd_data_11),
    .io_snd_data_12(parity_generator_io_snd_data_12),
    .io_snd_data_13(parity_generator_io_snd_data_13),
    .io_snd_data_14(parity_generator_io_snd_data_14),
    .io_snd_data_15(parity_generator_io_snd_data_15),
    .io_snd_data_16(parity_generator_io_snd_data_16),
    .io_snd_data_17(parity_generator_io_snd_data_17),
    .io_snd_data_18(parity_generator_io_snd_data_18),
    .io_snd_data_19(parity_generator_io_snd_data_19),
    .io_snd_data_20(parity_generator_io_snd_data_20),
    .io_snd_data_21(parity_generator_io_snd_data_21),
    .io_snd_data_22(parity_generator_io_snd_data_22),
    .io_snd_data_23(parity_generator_io_snd_data_23),
    .io_snd_data_24(parity_generator_io_snd_data_24),
    .io_snd_data_25(parity_generator_io_snd_data_25),
    .io_snd_data_26(parity_generator_io_snd_data_26),
    .io_snd_data_27(parity_generator_io_snd_data_27),
    .io_snd_data_28(parity_generator_io_snd_data_28),
    .io_snd_data_29(parity_generator_io_snd_data_29),
    .io_snd_data_30(parity_generator_io_snd_data_30),
    .io_snd_data_31(parity_generator_io_snd_data_31),
    .io_snd_data_32(parity_generator_io_snd_data_32),
    .io_snd_data_33(parity_generator_io_snd_data_33),
    .io_snd_data_34(parity_generator_io_snd_data_34),
    .io_snd_data_35(parity_generator_io_snd_data_35),
    .io_snd_data_36(parity_generator_io_snd_data_36),
    .io_snd_data_37(parity_generator_io_snd_data_37),
    .io_snd_data_38(parity_generator_io_snd_data_38),
    .io_snd_data_39(parity_generator_io_snd_data_39),
    .io_snd_data_40(parity_generator_io_snd_data_40),
    .io_snd_data_41(parity_generator_io_snd_data_41),
    .io_snd_data_42(parity_generator_io_snd_data_42),
    .io_snd_data_43(parity_generator_io_snd_data_43),
    .io_snd_data_44(parity_generator_io_snd_data_44),
    .io_snd_data_45(parity_generator_io_snd_data_45),
    .io_snd_data_46(parity_generator_io_snd_data_46),
    .io_snd_data_47(parity_generator_io_snd_data_47),
    .io_snd_data_48(parity_generator_io_snd_data_48),
    .io_snd_data_49(parity_generator_io_snd_data_49),
    .io_snd_data_50(parity_generator_io_snd_data_50),
    .io_snd_data_51(parity_generator_io_snd_data_51),
    .io_snd_data_52(parity_generator_io_snd_data_52),
    .io_snd_data_53(parity_generator_io_snd_data_53),
    .io_snd_data_54(parity_generator_io_snd_data_54),
    .io_snd_data_55(parity_generator_io_snd_data_55),
    .io_snd_data_56(parity_generator_io_snd_data_56),
    .io_snd_data_57(parity_generator_io_snd_data_57),
    .io_snd_data_58(parity_generator_io_snd_data_58),
    .io_snd_data_59(parity_generator_io_snd_data_59),
    .io_snd_data_60(parity_generator_io_snd_data_60),
    .io_snd_data_61(parity_generator_io_snd_data_61),
    .io_snd_data_62(parity_generator_io_snd_data_62),
    .io_snd_data_63(parity_generator_io_snd_data_63),
    .io_snd_data_vld(parity_generator_io_snd_data_vld),
    .io_rcv_data_vld(parity_generator_io_rcv_data_vld),
    .io_parity_data_0(parity_generator_io_parity_data_0),
    .io_parity_data_1(parity_generator_io_parity_data_1),
    .io_parity_data_2(parity_generator_io_parity_data_2),
    .io_parity_data_3(parity_generator_io_parity_data_3),
    .io_parity_data_4(parity_generator_io_parity_data_4),
    .io_parity_data_5(parity_generator_io_parity_data_5),
    .io_parity_data_6(parity_generator_io_parity_data_6),
    .io_parity_data_7(parity_generator_io_parity_data_7),
    .io_parity_data_8(parity_generator_io_parity_data_8),
    .io_parity_data_9(parity_generator_io_parity_data_9),
    .io_parity_data_10(parity_generator_io_parity_data_10),
    .io_parity_data_11(parity_generator_io_parity_data_11),
    .io_parity_data_12(parity_generator_io_parity_data_12),
    .io_parity_data_13(parity_generator_io_parity_data_13),
    .io_parity_data_14(parity_generator_io_parity_data_14),
    .io_parity_data_15(parity_generator_io_parity_data_15),
    .io_parity_data_16(parity_generator_io_parity_data_16),
    .io_parity_data_17(parity_generator_io_parity_data_17),
    .io_parity_data_18(parity_generator_io_parity_data_18),
    .io_parity_data_19(parity_generator_io_parity_data_19),
    .io_parity_data_20(parity_generator_io_parity_data_20),
    .io_parity_data_21(parity_generator_io_parity_data_21),
    .io_parity_data_22(parity_generator_io_parity_data_22),
    .io_parity_data_23(parity_generator_io_parity_data_23),
    .io_parity_data_24(parity_generator_io_parity_data_24),
    .io_parity_data_25(parity_generator_io_parity_data_25),
    .io_parity_data_26(parity_generator_io_parity_data_26),
    .io_parity_data_27(parity_generator_io_parity_data_27),
    .io_parity_data_28(parity_generator_io_parity_data_28),
    .io_parity_data_29(parity_generator_io_parity_data_29),
    .io_parity_data_30(parity_generator_io_parity_data_30),
    .io_parity_data_31(parity_generator_io_parity_data_31),
    .io_parity_data_32(parity_generator_io_parity_data_32),
    .io_parity_data_33(parity_generator_io_parity_data_33),
    .io_parity_data_34(parity_generator_io_parity_data_34),
    .io_parity_data_35(parity_generator_io_parity_data_35),
    .io_parity_data_36(parity_generator_io_parity_data_36),
    .io_parity_data_37(parity_generator_io_parity_data_37),
    .io_parity_data_38(parity_generator_io_parity_data_38),
    .io_parity_data_39(parity_generator_io_parity_data_39),
    .io_parity_data_40(parity_generator_io_parity_data_40),
    .io_parity_data_41(parity_generator_io_parity_data_41),
    .io_parity_data_42(parity_generator_io_parity_data_42),
    .io_parity_data_43(parity_generator_io_parity_data_43),
    .io_parity_data_44(parity_generator_io_parity_data_44),
    .io_parity_data_45(parity_generator_io_parity_data_45),
    .io_parity_data_46(parity_generator_io_parity_data_46),
    .io_parity_data_47(parity_generator_io_parity_data_47),
    .io_parity_data_48(parity_generator_io_parity_data_48),
    .io_parity_data_49(parity_generator_io_parity_data_49),
    .io_parity_data_50(parity_generator_io_parity_data_50),
    .io_parity_data_51(parity_generator_io_parity_data_51),
    .io_parity_data_52(parity_generator_io_parity_data_52),
    .io_parity_data_53(parity_generator_io_parity_data_53),
    .io_parity_data_54(parity_generator_io_parity_data_54),
    .io_parity_data_55(parity_generator_io_parity_data_55),
    .io_parity_data_56(parity_generator_io_parity_data_56),
    .io_parity_data_57(parity_generator_io_parity_data_57),
    .io_parity_data_58(parity_generator_io_parity_data_58),
    .io_parity_data_59(parity_generator_io_parity_data_59),
    .io_parity_data_60(parity_generator_io_parity_data_60),
    .io_parity_data_61(parity_generator_io_parity_data_61),
    .io_parity_data_62(parity_generator_io_parity_data_62),
    .io_parity_data_63(parity_generator_io_parity_data_63),
    .io_parity_insert(parity_generator_io_parity_insert),
    .io_parity_check(parity_generator_io_parity_check),
    .io_parity_rdy(parity_generator_io_parity_rdy),
    .io_rdi_state(parity_generator_io_rdi_state),
    .io_parity_rx_enable(parity_generator_io_parity_rx_enable),
    .io_parity_tx_enable(parity_generator_io_parity_tx_enable)
  );
  assign io_fdi_lpData_ready = d2d_mainband_io_fdi_pl_trdy; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 133:25]
  assign io_fdi_plData_valid = d2d_mainband_io_fdi_pl_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 134:25]
  assign io_fdi_plData_bits = d2d_mainband_io_fdi_pl_data; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 135:24]
  assign io_fdi_plRetimerCrd = 1'h0; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 68:25]
  assign io_fdi_plDllp_valid = 1'h0; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 61:25]
  assign io_fdi_plDllp_bits = 128'h0; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 60:24]
  assign io_fdi_plDllpOfc = 1'h0; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 62:22]
  assign io_fdi_plStream_protoStack = 1'h0; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 136:21]
  assign io_fdi_plStream_protoType = 3'h4; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 136:21]
  assign io_fdi_plFlitCancel = 1'h0; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 50:25]
  assign io_fdi_plStateStatus = link_manager_io_fdi_pl_state_sts; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 78:26]
  assign io_fdi_plInbandPres = link_manager_io_fdi_pl_inband_pres; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 80:25]
  assign io_fdi_plError = 1'h0; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 54:20]
  assign io_fdi_plCerror = 1'h0; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 55:21]
  assign io_fdi_plNfError = 1'h0; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 52:22]
  assign io_fdi_plTrainError = 1'h0; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 53:25]
  assign io_fdi_plRxActiveReq = link_manager_io_fdi_pl_rx_active_req; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 79:26]
  assign io_fdi_plProtocol = 3'h7; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 47:23]
  assign io_fdi_plProtocolFlitFormat = 3'h1; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 46:33]
  assign io_fdi_plProtocolValid = 1'h1; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 45:28]
  assign io_fdi_plStallReq = fdi_stall_handler_io_fdi_pl_stallreq; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 121:23]
  assign io_fdi_plPhyInRecenter = 1'h0; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 57:28]
  assign io_fdi_plPhyInL1 = 1'h0; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 58:22]
  assign io_fdi_plPhyInL2 = 1'h0; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 59:22]
  assign io_fdi_plSpeedMode = io_rdi_plSpeedMode; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 48:24]
  assign io_fdi_plLinkWidth = io_rdi_plLinkWidth; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 49:24]
  assign io_fdi_plClkReq = 1'h1; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 64:21]
  assign io_fdi_plWakeAck = 1'h1; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 66:22]
  assign io_fdi_plConfig_valid = d2d_sideband_io_fdi_pl_cfg_vld; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 107:27]
  assign io_fdi_plConfig_bits = d2d_sideband_io_fdi_pl_cfg; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 106:26]
  assign io_fdi_lpConfigCredit = d2d_sideband_io_fdi_lp_cfg_crd; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 111:27]
  assign io_rdi_lpData_valid = d2d_mainband_io_rdi_lp_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 139:25]
  assign io_rdi_lpData_irdy = d2d_mainband_io_rdi_lp_irdy; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 138:24]
  assign io_rdi_lpData_bits = d2d_mainband_io_rdi_lp_data; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 140:24]
  assign io_rdi_lpRetimerCrd = 1'h0; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 70:25]
  assign io_rdi_lpStateReq = link_manager_io_rdi_lp_state_req; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 83:22]
  assign io_rdi_lpLinkError = link_manager_io_rdi_lp_linkerror; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 82:24]
  assign io_rdi_lpStallAck = rdi_stall_handler_io_rdi_lp_stallack; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 125:23]
  assign io_rdi_lpClkAck = 1'h1; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 65:21]
  assign io_rdi_lpWakeReq = 1'h1; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 71:22]
  assign io_rdi_plConfigCredit = d2d_sideband_io_rdi_pl_cfg_crd; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 115:27]
  assign io_rdi_lpConfig_valid = d2d_sideband_io_rdi_lp_cfg_vld; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 117:27]
  assign io_rdi_lpConfig_bits = d2d_sideband_io_rdi_lp_cfg; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 116:26]
  assign link_manager_clock = clock;
  assign link_manager_reset = reset;
  assign link_manager_io_fdi_lp_state_req = io_fdi_lpStateReq; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 75:38]
  assign link_manager_io_fdi_lp_linkerror = io_fdi_lpLinkError; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 76:38]
  assign link_manager_io_fdi_lp_rx_active_sts = io_fdi_lpRxActiveStatus; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 77:42]
  assign link_manager_io_rdi_pl_state_sts = io_rdi_plStateStatus; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 84:38]
  assign link_manager_io_rdi_pl_inband_pres = io_rdi_plInbandPres; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 85:40]
  assign link_manager_io_sb_rcv = d2d_sideband_io_sideband_rcv; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 89:28]
  assign link_manager_io_sb_rdy = d2d_sideband_io_sideband_rdy; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 90:28]
  assign link_manager_io_linkmgmt_stalldone = fdi_stall_handler_io_linkmgmt_stalldone; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 93:40]
  assign fdi_stall_handler_clock = clock;
  assign fdi_stall_handler_reset = reset;
  assign fdi_stall_handler_io_linkmgmt_stallreq = link_manager_io_linkmgmt_stallreq; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 94:44]
  assign fdi_stall_handler_io_fdi_lp_stallack = io_fdi_lpStallAck; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 122:42]
  assign rdi_stall_handler_clock = clock;
  assign rdi_stall_handler_reset = reset;
  assign rdi_stall_handler_io_mainband_stalldone = d2d_mainband_io_mainband_stalldone; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 149:45]
  assign rdi_stall_handler_io_rdi_pl_stallreq = io_rdi_plStallReq; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 124:42]
  assign d2d_sideband_clock = clock;
  assign d2d_sideband_reset = reset;
  assign d2d_sideband_io_fdi_pl_cfg_crd = io_fdi_plConfigCredit; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 108:36]
  assign d2d_sideband_io_fdi_lp_cfg = io_fdi_lpConfig_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 109:32]
  assign d2d_sideband_io_fdi_lp_cfg_vld = io_fdi_lpConfig_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 110:36]
  assign d2d_sideband_io_rdi_pl_cfg = io_rdi_plConfig_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 113:32]
  assign d2d_sideband_io_rdi_pl_cfg_vld = io_rdi_plConfig_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 114:36]
  assign d2d_sideband_io_rdi_lp_cfg_crd = io_rdi_lpConfigCredit; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 118:36]
  assign d2d_sideband_io_sideband_snt = link_manager_io_sb_snd; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 88:34]
  assign d2d_mainband_clock = clock;
  assign d2d_mainband_reset = reset;
  assign d2d_mainband_io_fdi_lp_irdy = io_fdi_lpData_irdy; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 129:33]
  assign d2d_mainband_io_fdi_lp_valid = io_fdi_lpData_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 130:34]
  assign d2d_mainband_io_fdi_lp_data = io_fdi_lpData_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 131:33]
  assign d2d_mainband_io_rdi_pl_trdy = io_rdi_lpData_ready; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 141:33]
  assign d2d_mainband_io_rdi_pl_valid = io_rdi_plData_valid; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 142:34]
  assign d2d_mainband_io_rdi_pl_data = io_rdi_plData_bits; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 143:33]
  assign d2d_mainband_io_d2d_state = link_manager_io_fdi_pl_state_sts; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 145:31]
  assign d2d_mainband_io_mainband_stallreq = rdi_stall_handler_io_mainband_stallreq; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 148:39]
  assign d2d_mainband_io_parity_insert = parity_generator_io_parity_insert; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 157:35]
  assign d2d_mainband_io_parity_data = {d2d_mainband_io_parity_data_hi,d2d_mainband_io_parity_data_lo}; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 158:76]
  assign d2d_mainband_io_parity_check = parity_generator_io_parity_check; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 160:34]
  assign parity_generator_clock = clock;
  assign parity_generator_reset = reset;
  assign parity_generator_io_snd_data_0 = _WIRE_1[7:0]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_1 = _WIRE_1[15:8]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_2 = _WIRE_1[23:16]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_3 = _WIRE_1[31:24]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_4 = _WIRE_1[39:32]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_5 = _WIRE_1[47:40]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_6 = _WIRE_1[55:48]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_7 = _WIRE_1[63:56]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_8 = _WIRE_1[71:64]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_9 = _WIRE_1[79:72]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_10 = _WIRE_1[87:80]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_11 = _WIRE_1[95:88]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_12 = _WIRE_1[103:96]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_13 = _WIRE_1[111:104]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_14 = _WIRE_1[119:112]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_15 = _WIRE_1[127:120]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_16 = _WIRE_1[135:128]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_17 = _WIRE_1[143:136]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_18 = _WIRE_1[151:144]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_19 = _WIRE_1[159:152]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_20 = _WIRE_1[167:160]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_21 = _WIRE_1[175:168]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_22 = _WIRE_1[183:176]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_23 = _WIRE_1[191:184]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_24 = _WIRE_1[199:192]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_25 = _WIRE_1[207:200]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_26 = _WIRE_1[215:208]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_27 = _WIRE_1[223:216]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_28 = _WIRE_1[231:224]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_29 = _WIRE_1[239:232]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_30 = _WIRE_1[247:240]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_31 = _WIRE_1[255:248]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_32 = _WIRE_1[263:256]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_33 = _WIRE_1[271:264]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_34 = _WIRE_1[279:272]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_35 = _WIRE_1[287:280]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_36 = _WIRE_1[295:288]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_37 = _WIRE_1[303:296]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_38 = _WIRE_1[311:304]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_39 = _WIRE_1[319:312]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_40 = _WIRE_1[327:320]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_41 = _WIRE_1[335:328]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_42 = _WIRE_1[343:336]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_43 = _WIRE_1[351:344]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_44 = _WIRE_1[359:352]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_45 = _WIRE_1[367:360]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_46 = _WIRE_1[375:368]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_47 = _WIRE_1[383:376]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_48 = _WIRE_1[391:384]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_49 = _WIRE_1[399:392]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_50 = _WIRE_1[407:400]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_51 = _WIRE_1[415:408]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_52 = _WIRE_1[423:416]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_53 = _WIRE_1[431:424]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_54 = _WIRE_1[439:432]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_55 = _WIRE_1[447:440]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_56 = _WIRE_1[455:448]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_57 = _WIRE_1[463:456]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_58 = _WIRE_1[471:464]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_59 = _WIRE_1[479:472]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_60 = _WIRE_1[487:480]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_61 = _WIRE_1[495:488]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_62 = _WIRE_1[503:496]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_63 = _WIRE_1[511:504]; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 153:70]
  assign parity_generator_io_snd_data_vld = d2d_mainband_io_snd_data_vld; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 154:38]
  assign parity_generator_io_rcv_data_vld = d2d_mainband_io_rcv_data_vld; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 156:38]
  assign parity_generator_io_parity_rdy = d2d_mainband_io_parity_rdy; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 159:36]
  assign parity_generator_io_rdi_state = io_rdi_plStateStatus; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 164:35]
  assign parity_generator_io_parity_rx_enable = link_manager_io_parity_rx_enable; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 102:42]
  assign parity_generator_io_parity_tx_enable = link_manager_io_parity_tx_enable; // @[\\src\\main\\scala\\d2dadapter\\D2DAdapter.scala 103:42]
endmodule
