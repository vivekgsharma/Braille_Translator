module main(ledx,ledy,A,B,C,D,E,F);
	
	input A,B,C,D,E,F;
	output [6:0]ledx;
	output [6:0]ledy;
	
	wire [3:0]X; wire [3:0]Y;
	
	braille_to_bcd_decoder BB(.Y(Y),.X(X),.A(A),.B(B),.C(C),.D(D),.E(E),.F(F));
	
	bcd_to_7_segment_decoder BS1(.i0(X[0]),.i1(X[1]),.i2(X[2]),.i3(X[3]),.a(ledx[6]),.b(ledx[5]),.c(ledx[4]),.d(ledx[3]),.e(ledx[2]),.f(ledx[1]),.g(ledx[0]));
	bcd_to_7_segment_decoder BS2(.i0(Y[0]),.i1(Y[1]),.i2(Y[2]),.i3(Y[3]),.a(ledy[6]),.b(ledy[5]),.c(ledy[4]),.d(ledy[3]),.e(ledy[2]),.f(ledy[1]),.g(ledy[0]));

endmodule	