module bcdx0 (out,A,B,C,D,E,F);
	parameter H = 1'b1;
	parameter L = 1'b0;

	input A,B,C,D,E,F;
	output out;
	
	wire [31:0] in; wire [4:0] sel;
	assign sel = {A,B,C,D,E};
	not G (NF,F);
	assign in = {L,H,F,H,NF,L,NF,F,L,H,NF,L,H,F,NF,L,L,NF,{2{F,H}},{2{L}},{3{H}},F,NF,H,NF,NF};

	mux32to1 M (.out(out), .sel(sel), .in(in));

endmodule