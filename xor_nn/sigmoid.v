module sigmoid
#(parameter DATA_WIDTH=16, parameter ADDR_WIDTH=16)
(
	input			clk,
	input			[(ADDR_WIDTH-1):0] addr, 
	output reg	[(DATA_WIDTH-1):0] q
);

	reg [DATA_WIDTH-1:0] rom [2**ADDR_WIDTH-1:0];

	initial
	begin
		$readmemb("sigmoid_values.txt", rom);
	end

	always @ (posedge clk)
	begin
		q <= rom[addr];
	end

endmodule
