module bcdy2 (out,A,B,C,D,E,F);
	parameter H = 1'b1;
	parameter L = 1'b0;

	input A,B,C,D,E,F;
	output out;
	
	wire [31:0] in; wire [4:0] sel;
	assign sel = {A,B,C,D,E};
	not G (NF,F);
	assign in = {{3{L}},F,{2{L}},NF,H,{2{L}},H,NF,{2{L}},H,{2{NF}},H,{2{L}},F,H,NF,{2{H}},L,F,L,{2{NF}},{2{F}}};

	mux32to1 M (.out(out), .sel(sel), .in(in));

endmodule