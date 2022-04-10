module xor_nn
#(parameter data_w=16)
(
	input		clk,
	input		[data_w-1:0] A, B,
	output	[data_w-1:0] Y
);

//	reg [data_w*3-1:0] in_reg = {16'h1000, B, A};
//	reg [data_w*3-1:0] in_2 = {16'h1000, out_n_1_2, out_n_1_1};
	wire [data_w-1:0] out_n_1_1;
	wire [data_w-1:0] out_n_1_2;
	
	initial
	begin
		$display("Hey");
	end
	
	always @(*)
	begin
		$display(out_n_1_1);
		$display(out_n_1_2);
		$display(Y);
	end
	
	neuron #(3, 1, 1, 16, "w_1_1.txt") n_1_1
	(
		clk,
		{16'h1000, B, A},
		out_n_1_1
	);
	
	neuron #(3, 1, 2, 16, "w_1_2.txt") n_1_2
	(
		clk,
		{16'h1000, B, A},
		out_n_1_2
	);
	
	neuron #(3, 2, 1, 16, "w_2_1.txt") n_2_1
	(
		clk,
		{16'h1000, out_n_1_2, out_n_1_1},
		Y
	);

endmodule
