module bcdx3 (out,A,B,C,D,E,F);
	parameter H = 1'b1;
	parameter L = 1'b0;

	input A,B,C,D,E,F;
	output out;
	
	wire [31:0] in; wire [4:0] sel;
	assign sel = {A,B,C,D,E};
	not G (NF,F);
	assign in = {NF,F,NF,L,{2{F,L}},NF,F,{3{F,L}},{2{NF,F}},L,H,{10{L}}};

	mux32to1 M (.out(out), .sel(sel), .in(in));

endmodule