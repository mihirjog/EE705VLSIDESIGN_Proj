module neuron
#(parameter inputs=3, layer_no=1, neuron_no=1, data_w=16, file="w_1_1.txt")
(
	input		clk,
	input		[inputs*data_w-1:0] in,
	output	[data_w-1:0] out
);

	parameter addr_W = $clog2(inputs);
	
	reg	[data_w*2-1:0] out_temp;
	reg	[data_w-1:0] 	sum = 0;
	
	integer i = 0;

	reg [data_w-1:0] rom [inputs-1:0];

	initial
	begin
		$readmemb(file, rom);
	end
	
	
	sigmoid #(data_w, data_w) sig_uut (
	
		clk,
		sum,
		out
	
	);
	
	
	always @ *
	begin
	
		sum = 0;
	
		for(i = 0; i < inputs; i = i+1) begin
			out_temp	= $signed(in[16*i+:16]) * $signed(rom[i]);
			sum		= sum + (out_temp >> 12);
		end
		
	end


endmodule