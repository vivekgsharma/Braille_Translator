module bcdy0 (out,A,B,C,D,E,F);
	parameter H = 1'b1;
	parameter L = 1'b0;

	input A,B,C,D,E,F;
	output out;
	
	wire [31:0] in; wire [4:0] sel;
	assign sel = {A,B,C,D,E};
	not G (NF,F);
	assign in = {{2{H}},{2{L}},{2{F}},NF,H,{4{L}},{2{NF}},H,NF,{2{F}},{2{H}},{2{F}},H,L,F,NF,L,H,NF,F,H,L};

	mux32to1 M (.out(out), .sel(sel), .in(in));

endmodule