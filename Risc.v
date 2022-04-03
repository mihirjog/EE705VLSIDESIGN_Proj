module Risc(
  input         clock,
  input         reset,
  input         io_isWr,
  input  [7:0]  io_wrAddr,
  input  [31:0] io_wrData,
  input         io_boot,
  output        io_valid,
  output [31:0] io_out
);
`ifdef RANDOMIZE_MEM_INIT
  reg [31:0] _RAND_0;
  reg [31:0] _RAND_1;
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  reg [31:0] _RAND_2;
`endif // RANDOMIZE_REG_INIT
  reg [31:0] file [0:255]; // @[Risc.scala 16:17]
  wire [31:0] file__T_1_data; // @[Risc.scala 16:17]
  wire [7:0] file__T_1_addr; // @[Risc.scala 16:17]
  wire [31:0] file__T_3_data; // @[Risc.scala 16:17]
  wire [7:0] file__T_3_addr; // @[Risc.scala 16:17]
  wire [31:0] file__T_9_data; // @[Risc.scala 16:17]
  wire [7:0] file__T_9_addr; // @[Risc.scala 16:17]
  wire [31:0] file__T_10_data; // @[Risc.scala 16:17]
  wire [7:0] file__T_10_addr; // @[Risc.scala 16:17]
  wire [31:0] file__T_18_data; // @[Risc.scala 16:17]
  wire [7:0] file__T_18_addr; // @[Risc.scala 16:17]
  wire [31:0] file__T_19_data; // @[Risc.scala 16:17]
  wire [7:0] file__T_19_addr; // @[Risc.scala 16:17]
  wire [31:0] file__T_27_data; // @[Risc.scala 16:17]
  wire [7:0] file__T_27_addr; // @[Risc.scala 16:17]
  wire [31:0] file__T_28_data; // @[Risc.scala 16:17]
  wire [7:0] file__T_28_addr; // @[Risc.scala 16:17]
  wire [31:0] file__T_36_data; // @[Risc.scala 16:17]
  wire [7:0] file__T_36_addr; // @[Risc.scala 16:17]
  wire [31:0] file__T_37_data; // @[Risc.scala 16:17]
  wire [7:0] file__T_37_addr; // @[Risc.scala 16:17]
  wire [31:0] file__T_45_data; // @[Risc.scala 16:17]
  wire [7:0] file__T_45_addr; // @[Risc.scala 16:17]
  wire [31:0] file__T_46_data; // @[Risc.scala 16:17]
  wire [7:0] file__T_46_addr; // @[Risc.scala 16:17]
  wire [31:0] file__T_54_data; // @[Risc.scala 16:17]
  wire [7:0] file__T_54_addr; // @[Risc.scala 16:17]
  wire [31:0] file__T_55_data; // @[Risc.scala 16:17]
  wire [7:0] file__T_55_addr; // @[Risc.scala 16:17]
  wire [31:0] file__T_63_data; // @[Risc.scala 16:17]
  wire [7:0] file__T_63_addr; // @[Risc.scala 16:17]
  wire [31:0] file__T_64_data; // @[Risc.scala 16:17]
  wire [7:0] file__T_64_addr; // @[Risc.scala 16:17]
  wire [31:0] file__T_72_data; // @[Risc.scala 16:17]
  wire [7:0] file__T_72_addr; // @[Risc.scala 16:17]
  wire [31:0] file__T_73_data; // @[Risc.scala 16:17]
  wire [7:0] file__T_73_addr; // @[Risc.scala 16:17]
  wire [31:0] file__T_84_data; // @[Risc.scala 16:17]
  wire [7:0] file__T_84_addr; // @[Risc.scala 16:17]
  wire  file__T_84_mask; // @[Risc.scala 16:17]
  wire  file__T_84_en; // @[Risc.scala 16:17]
  reg [31:0] code [0:255]; // @[Risc.scala 17:17]
  wire [31:0] code_inst_data; // @[Risc.scala 17:17]
  wire [7:0] code_inst_addr; // @[Risc.scala 17:17]
  wire [31:0] code__T_7_data; // @[Risc.scala 17:17]
  wire [7:0] code__T_7_addr; // @[Risc.scala 17:17]
  wire  code__T_7_mask; // @[Risc.scala 17:17]
  wire  code__T_7_en; // @[Risc.scala 17:17]
  reg [7:0] pc; // @[Risc.scala 18:21]
  wire [7:0] op = code_inst_data[31:24]; // @[Risc.scala 23:18]
  wire [7:0] rci = code_inst_data[23:16]; // @[Risc.scala 24:18]
  wire [7:0] rai = code_inst_data[15:8]; // @[Risc.scala 25:18]
  wire [7:0] rbi = code_inst_data[7:0]; // @[Risc.scala 26:18]
  wire  _T_8 = 8'h0 == op; // @[Conditional.scala 37:30]
  wire [63:0] _T_11 = file__T_9_data * file__T_10_data; // @[Risc.scala 52:50]
  wire [64:0] _T_12 = {{1'd0}, _T_11}; // @[Risc.scala 52:41]
  wire [7:0] _T_15 = rai + 8'h1; // @[Risc.scala 53:20]
  wire [7:0] _T_17 = rbi + 8'h1; // @[Risc.scala 54:20]
  wire [63:0] _T_20 = file__T_18_data * file__T_19_data; // @[Risc.scala 52:50]
  wire [63:0] _T_22 = _T_12[63:0] + _T_20; // @[Risc.scala 52:41]
  wire [7:0] _T_24 = _T_15 + 8'h1; // @[Risc.scala 53:20]
  wire [7:0] _T_26 = _T_17 + 8'h1; // @[Risc.scala 54:20]
  wire [63:0] _T_29 = file__T_27_data * file__T_28_data; // @[Risc.scala 52:50]
  wire [63:0] _T_31 = _T_22 + _T_29; // @[Risc.scala 52:41]
  wire [7:0] _T_33 = _T_24 + 8'h1; // @[Risc.scala 53:20]
  wire [7:0] _T_35 = _T_26 + 8'h1; // @[Risc.scala 54:20]
  wire [63:0] _T_38 = file__T_36_data * file__T_37_data; // @[Risc.scala 52:50]
  wire [63:0] _T_40 = _T_31 + _T_38; // @[Risc.scala 52:41]
  wire [7:0] _T_42 = _T_33 + 8'h1; // @[Risc.scala 53:20]
  wire [7:0] _T_44 = _T_35 + 8'h1; // @[Risc.scala 54:20]
  wire [63:0] _T_47 = file__T_45_data * file__T_46_data; // @[Risc.scala 52:50]
  wire [63:0] _T_49 = _T_40 + _T_47; // @[Risc.scala 52:41]
  wire [7:0] _T_51 = _T_42 + 8'h1; // @[Risc.scala 53:20]
  wire [7:0] _T_53 = _T_44 + 8'h1; // @[Risc.scala 54:20]
  wire [63:0] _T_56 = file__T_54_data * file__T_55_data; // @[Risc.scala 52:50]
  wire [63:0] _T_58 = _T_49 + _T_56; // @[Risc.scala 52:41]
  wire [7:0] _T_60 = _T_51 + 8'h1; // @[Risc.scala 53:20]
  wire [7:0] _T_62 = _T_53 + 8'h1; // @[Risc.scala 54:20]
  wire [63:0] _T_65 = file__T_63_data * file__T_64_data; // @[Risc.scala 52:50]
  wire [63:0] _T_67 = _T_58 + _T_65; // @[Risc.scala 52:41]
  wire [63:0] _T_74 = file__T_72_data * file__T_73_data; // @[Risc.scala 52:50]
  wire [63:0] c = _T_67 + _T_74; // @[Risc.scala 52:41]
  wire  _T_78 = 8'h1 == op; // @[Conditional.scala 37:30]
  wire [15:0] _GEN_85 = {rai, 8'h0}; // @[Risc.scala 57:31]
  wire [22:0] _T_79 = {{7'd0}, _GEN_85}; // @[Risc.scala 57:31]
  wire [22:0] _GEN_86 = {{15'd0}, rbi}; // @[Risc.scala 57:39]
  wire [22:0] _T_80 = _T_79 | _GEN_86; // @[Risc.scala 57:39]
  wire [22:0] _GEN_0 = _T_78 ? _T_80 : 23'h0; // @[Conditional.scala 39:67]
  wire [63:0] _GEN_19 = _T_8 ? c : {{41'd0}, _GEN_0}; // @[Conditional.scala 40:58]
  wire  _T_82 = ~reset; // @[Risc.scala 62:11]
  wire  _T_83 = rci == 8'hff; // @[Risc.scala 65:15]
  wire  _GEN_23 = _T_83 ? 1'h0 : 1'h1; // @[Risc.scala 65:26]
  wire [63:0] _GEN_45 = io_boot ? 64'h0 : _GEN_19; // @[Risc.scala 48:25]
  wire [63:0] _GEN_77 = io_isWr ? 64'h0 : _GEN_45; // @[Risc.scala 46:18]
  wire [31:0] rc = _GEN_77[31:0]; // @[Risc.scala 30:16 Risc.scala 34:12 Risc.scala 56:19 Risc.scala 57:23]
  wire [7:0] _T_86 = pc + 8'h1; // @[Risc.scala 74:14]
  wire  _GEN_29 = io_boot ? 1'h0 : _T_8; // @[Risc.scala 48:25]
  wire [31:0] _GEN_46 = io_boot ? 32'h0 : rc; // @[Risc.scala 48:25]
  wire  _GEN_47 = io_boot ? 1'h0 : _T_83; // @[Risc.scala 48:25]
  wire  _GEN_50 = io_boot ? 1'h0 : _GEN_23; // @[Risc.scala 48:25]
  wire  _GEN_87 = ~io_isWr; // @[Risc.scala 62:11]
  wire  _GEN_88 = ~io_boot; // @[Risc.scala 62:11]
  wire  _GEN_89 = _GEN_87 & _GEN_88; // @[Risc.scala 62:11]
  assign file__T_1_addr = code_inst_data[15:8];
  assign file__T_1_data = file[file__T_1_addr]; // @[Risc.scala 16:17]
  assign file__T_3_addr = code_inst_data[7:0];
  assign file__T_3_data = file[file__T_3_addr]; // @[Risc.scala 16:17]
  assign file__T_9_addr = code_inst_data[15:8];
  assign file__T_9_data = file[file__T_9_addr]; // @[Risc.scala 16:17]
  assign file__T_10_addr = code_inst_data[7:0];
  assign file__T_10_data = file[file__T_10_addr]; // @[Risc.scala 16:17]
  assign file__T_18_addr = rai + 8'h1;
  assign file__T_18_data = file[file__T_18_addr]; // @[Risc.scala 16:17]
  assign file__T_19_addr = rbi + 8'h1;
  assign file__T_19_data = file[file__T_19_addr]; // @[Risc.scala 16:17]
  assign file__T_27_addr = _T_15 + 8'h1;
  assign file__T_27_data = file[file__T_27_addr]; // @[Risc.scala 16:17]
  assign file__T_28_addr = _T_17 + 8'h1;
  assign file__T_28_data = file[file__T_28_addr]; // @[Risc.scala 16:17]
  assign file__T_36_addr = _T_24 + 8'h1;
  assign file__T_36_data = file[file__T_36_addr]; // @[Risc.scala 16:17]
  assign file__T_37_addr = _T_26 + 8'h1;
  assign file__T_37_data = file[file__T_37_addr]; // @[Risc.scala 16:17]
  assign file__T_45_addr = _T_33 + 8'h1;
  assign file__T_45_data = file[file__T_45_addr]; // @[Risc.scala 16:17]
  assign file__T_46_addr = _T_35 + 8'h1;
  assign file__T_46_data = file[file__T_46_addr]; // @[Risc.scala 16:17]
  assign file__T_54_addr = _T_42 + 8'h1;
  assign file__T_54_data = file[file__T_54_addr]; // @[Risc.scala 16:17]
  assign file__T_55_addr = _T_44 + 8'h1;
  assign file__T_55_data = file[file__T_55_addr]; // @[Risc.scala 16:17]
  assign file__T_63_addr = _T_51 + 8'h1;
  assign file__T_63_data = file[file__T_63_addr]; // @[Risc.scala 16:17]
  assign file__T_64_addr = _T_53 + 8'h1;
  assign file__T_64_data = file[file__T_64_addr]; // @[Risc.scala 16:17]
  assign file__T_72_addr = _T_60 + 8'h1;
  assign file__T_72_data = file[file__T_72_addr]; // @[Risc.scala 16:17]
  assign file__T_73_addr = _T_62 + 8'h1;
  assign file__T_73_data = file[file__T_73_addr]; // @[Risc.scala 16:17]
  assign file__T_84_data = _GEN_77[31:0];
  assign file__T_84_addr = code_inst_data[23:16];
  assign file__T_84_mask = 1'h1;
  assign file__T_84_en = io_isWr ? 1'h0 : _GEN_50;
  assign code_inst_addr = pc;
  assign code_inst_data = code[code_inst_addr]; // @[Risc.scala 17:17]
  assign code__T_7_data = io_wrData;
  assign code__T_7_addr = io_wrAddr;
  assign code__T_7_mask = 1'h1;
  assign code__T_7_en = io_isWr;
  assign io_valid = io_isWr ? 1'h0 : _GEN_47; // @[Risc.scala 32:12 Risc.scala 66:16]
  assign io_out = io_isWr ? 32'h0 : _GEN_46; // @[Risc.scala 33:12 Risc.scala 61:12]
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
  _RAND_0 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    file[initvar] = _RAND_0[31:0];
  _RAND_1 = {1{`RANDOM}};
  for (initvar = 0; initvar < 256; initvar = initvar+1)
    code[initvar] = _RAND_1[31:0];
`endif // RANDOMIZE_MEM_INIT
`ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  pc = _RAND_2[7:0];
`endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`ifdef FIRRTL_AFTER_INITIAL
`FIRRTL_AFTER_INITIAL
`endif
`endif // SYNTHESIS
  always @(posedge clock) begin
    if(file__T_84_en & file__T_84_mask) begin
      file[file__T_84_addr] <= file__T_84_data; // @[Risc.scala 16:17]
    end
    if(code__T_7_en & code__T_7_mask) begin
      code[code__T_7_addr] <= code__T_7_data; // @[Risc.scala 17:17]
    end
    if (reset) begin
      pc <= 8'h0;
    end else if (!(io_isWr)) begin
      if (io_boot) begin
        pc <= 8'h0;
      end else begin
        pc <= _T_86;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_89 & _T_82) begin
          $fwrite(32'h80000002,"\n io.out value is = AnonymousBundle(isWr -> %d, wrAddr -> %d, wrData -> %d, boot -> %d, valid -> %d, out -> %d).out",io_isWr,io_wrAddr,io_wrData,io_boot,io_valid,io_out); // @[Risc.scala 62:11]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_89 & _T_82) begin
          $fwrite(32'h80000002,"\n pc value is = %d",pc); // @[Risc.scala 75:11]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
