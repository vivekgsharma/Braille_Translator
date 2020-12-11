module mux32to1 (out, sel, in);

	input [31:0] in;
	input [4:0] sel;
	output out;
	wire [1:0] t;
	
	mux16to1 M0 (.out(t[0]), .sel(sel[3:0]), .in(in[15:0]));
	mux16to1 M1 (.out(t[1]), .sel(sel[3:0]), .in(in[31:16]));
	
	mux2to1 M2 (.out(out), .sel(sel[4]), .in(t));
	
endmodule 
	