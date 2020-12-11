module mux4to1 (out, sel, in);

	input [3:0] in;
	input [1:0] sel;
	output out;
	wire [1:0] t;
	
	mux2to1 M0 (.out(t[0]), .sel(sel[0]), .in(in[1:0]));
	mux2to1 M1 (.out(t[1]), .sel(sel[0]), .in(in[3:2]));
	mux2to1 M2 (.out(out), .sel(sel[1]), .in(t));
endmodule
	
	