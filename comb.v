module comb(
  input         clock,
  input         reset,
  input  [15:0] io_x,
  input  [15:0] io_y,
  input         io_addsub,
  output [15:0] io_z
);
  wire [15:0] _T_1 = io_x + io_y; // @[comb.scala 16:18]
  wire [15:0] _T_3 = io_x - io_y; // @[comb.scala 18:18]
  assign io_z = io_addsub ? _T_1 : _T_3; // @[comb.scala 16:10 comb.scala 18:10]
endmodule
