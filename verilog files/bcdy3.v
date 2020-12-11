module bcdy3 (out,A,B,C,D,E,F);
	parameter H = 1'b1;
	parameter L = 1'b0;

	input A,B,C,D,E,F;
	output out;
	
	wire [31:0] in; wire [4:0] sel;
	assign sel = {A,B,C,D,E};
	not G (NF,F);
	assign in = {{2{L}},F,L,H,NF,F,{5{L}},NF,H,{13{L}},NF,F,F,NF,L};

	mux32to1 M (.out(out), .sel(sel), .in(in));

endmodule