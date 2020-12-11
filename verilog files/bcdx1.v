module bcdx1 (out,A,B,C,D,E,F);
	parameter H = 1'b1;
	parameter L = 1'b0;

	input A,B,C,D,E,F;
	output out;
	
	wire [31:0] in; wire [4:0] sel;
	assign sel = {A,B,C,D,E};
	not G (NF,F);
	assign in = {F,NF,F,H,{2{NF,H}},L,{2{NF}},H,{4{NF}},L,NF,F,NF,H,{2{L}},NF,{5{L}},{3{NF}}};

	mux32to1 M (.out(out), .sel(sel), .in(in));

endmodule