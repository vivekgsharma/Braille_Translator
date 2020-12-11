module mux16to1 (out, sel, in);
	
	input [15:0] in;
	input [3:0] sel;
	output out;
	wire [3:0] t;
	
	mux4to1 M0 (.out(t[0]), .sel(sel[1:0]), .in(in[3:0]));
	mux4to1 M1 (.out(t[1]), .sel(sel[1:0]), .in(in[7:4]));
	mux4to1 M2 (.out(t[2]), .sel(sel[1:0]), .in(in[11:8]));
	mux4to1 M3 (.out(t[3]), .sel(sel[1:0]), .in(in[15:12]));
	mux4to1 M4 (.out(out), .sel(sel[3:2]), .in(t));
endmodule