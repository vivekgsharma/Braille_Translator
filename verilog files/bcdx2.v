module bcdx2 (out,A,B,C,D,E,F);
	parameter H = 1'b1;
	parameter L = 1'b0;

	input A,B,C,D,E,F;
	output out;
	
	wire [31:0] in; wire [4:0] sel;
	assign sel = {A,B,C,D,E};
	not G (NF,F);
	assign in = {F,NF,L,{2{NF}},H,{2{NF}},F,NF,{3{NF,H}},F,NF,L,{2{NF}},L,{7{H}},{3{F}}};

	mux32to1 M (.out(out), .sel(sel), .in(in));

endmodule