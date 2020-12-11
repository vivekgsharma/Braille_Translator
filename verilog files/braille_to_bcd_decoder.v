module braille_to_bcd_decoder(Y,X,A,B,C,D,E,F);

	input A,B,C,D,E,F;
	output [3:0]X;
	output [3:0]Y;
	
	//Declaring BCD X
	bcdx3 X3 (.out(X[3]), .A(A), .B(B), .C(C), .D(D), .E(E), .F(F));
	bcdx2 X2 (.out(X[2]), .A(A), .B(B), .C(C), .D(D), .E(E), .F(F));
	bcdx1 X1 (.out(X[1]), .A(A), .B(B), .C(C), .D(D), .E(E), .F(F));
	bcdx0 X0 (.out(X[0]), .A(A), .B(B), .C(C), .D(D), .E(E), .F(F));

	//Declaring BCD Y
	bcdy3 Y3 (.out(Y[3]), .A(A), .B(B), .C(C), .D(D), .E(E), .F(F));
	bcdy2 Y2 (.out(Y[2]), .A(A), .B(B), .C(C), .D(D), .E(E), .F(F));
	bcdy1 Y1 (.out(Y[1]), .A(A), .B(B), .C(C), .D(D), .E(E), .F(F));
	bcdy0 Y0 (.out(Y[0]), .A(A), .B(B), .C(C), .D(D), .E(E), .F(F));
	
endmodule