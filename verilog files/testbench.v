module testbench;
	
	reg A,B,C,D,E,F;
	wire [6:0]ledx;
	wire [6:0]ledy;
	wire [3:0]X;
	wire [3:0]Y;
	 
	main DUT1(.ledy(ledy), .ledx(ledx), .A(A), .B(B), .C(C), .D(D), .E(E), .F(F));
	braille_to_bcd_decoder DUT2(.Y(Y), .X(X), .A(A), .B(B), .C(C), .D(D), .E(E), .F(F));
	
	initial
		begin
			$dumpfile("test.vcd");
			$dumpvars(0,testbench);
			$monitor($time," Braille_input=%b%b%b%b%b%b, ASCII=%h%h, ledX=%b, ledY=%b, ", A,B,C,D,E,F,X,Y,ledx,ledy);
			#5 A=0; B=0; C=0; D=0; E=0; F=0;
			#5 A=0; B=0; C=0; D=0; E=0; F=1;
			#5 A=0; B=0; C=0; D=0; E=1; F=0;
			#5 A=0; B=0; C=0; D=0; E=1; F=1;
			#5 A=0; B=0; C=0; D=1; E=0; F=0;
			#5 A=0; B=0; C=0; D=1; E=0; F=1;
			#5 A=0; B=0; C=0; D=1; E=1; F=0;
			#5 A=0; B=0; C=0; D=1; E=1; F=1;
			#5 A=0; B=0; C=1; D=0; E=0; F=0;
			#5 A=0; B=0; C=1; D=0; E=0; F=1;
			#5 A=0; B=0; C=1; D=0; E=1; F=0;
			#5 A=0; B=0; C=1; D=0; E=1; F=1;
			#5 A=0; B=0; C=1; D=1; E=0; F=0;
			#5 A=0; B=0; C=1; D=1; E=0; F=1;
			#5 A=0; B=0; C=1; D=1; E=1; F=0;
			#5 A=0; B=0; C=1; D=1; E=1; F=1;
			#5 A=0; B=1; C=0; D=0; E=0; F=0;
			#5 A=0; B=1; C=0; D=0; E=0; F=1;
			#5 A=0; B=1; C=0; D=0; E=1; F=0;
			#5 A=0; B=1; C=0; D=0; E=1; F=1;
			#5 A=0; B=1; C=0; D=1; E=0; F=0;
			#5 A=0; B=1; C=0; D=1; E=0; F=1;
			#5 A=0; B=1; C=0; D=1; E=1; F=0;
			#5 A=0; B=1; C=0; D=1; E=1; F=1;
			#5 A=0; B=1; C=1; D=0; E=0; F=0;
			#5 A=0; B=1; C=1; D=0; E=0; F=1;
			#5 A=0; B=1; C=1; D=0; E=1; F=0;
			#5 A=0; B=1; C=1; D=0; E=1; F=1;
			#5 A=0; B=1; C=1; D=1; E=0; F=0;
			#5 A=0; B=1; C=1; D=1; E=0; F=1;
			#5 A=0; B=1; C=1; D=1; E=1; F=0;
			#5 A=0; B=1; C=1; D=1; E=1; F=1;
			#5 A=1; B=0; C=0; D=0; E=0; F=0;
			#5 A=1; B=0; C=0; D=0; E=0; F=1;
			#5 A=1; B=0; C=0; D=0; E=1; F=0;
			#5 A=1; B=0; C=0; D=0; E=1; F=1;
			#5 A=1; B=0; C=0; D=1; E=0; F=0;
			#5 A=1; B=0; C=0; D=1; E=0; F=1;
			#5 A=1; B=0; C=0; D=1; E=1; F=0;
			#5 A=1; B=0; C=0; D=1; E=1; F=1;
			#5 A=1; B=0; C=1; D=0; E=0; F=0;
			#5 A=1; B=0; C=1; D=0; E=0; F=1;
			#5 A=1; B=0; C=1; D=0; E=1; F=0;
			#5 A=1; B=0; C=1; D=0; E=1; F=1;
			#5 A=1; B=0; C=1; D=1; E=0; F=0;
			#5 A=1; B=0; C=1; D=1; E=0; F=1;
			#5 A=1; B=0; C=1; D=1; E=1; F=0;
			#5 A=1; B=0; C=1; D=1; E=1; F=1;
			#5 A=1; B=1; C=0; D=0; E=0; F=0;
			#5 A=1; B=1; C=0; D=0; E=0; F=1;
			#5 A=1; B=1; C=0; D=0; E=1; F=0;
			#5 A=1; B=1; C=0; D=0; E=1; F=1;
			#5 A=1; B=1; C=0; D=1; E=0; F=0;
			#5 A=1; B=1; C=0; D=1; E=0; F=1;
			#5 A=1; B=1; C=0; D=1; E=1; F=0;
			#5 A=1; B=1; C=0; D=1; E=1; F=1;
			#5 A=1; B=1; C=1; D=0; E=0; F=0;
			#5 A=1; B=1; C=1; D=0; E=0; F=1;
			#5 A=1; B=1; C=1; D=0; E=1; F=0;
			#5 A=1; B=1; C=1; D=0; E=1; F=1;
			#5 A=1; B=1; C=1; D=1; E=0; F=0;
			#5 A=1; B=1; C=1; D=1; E=0; F=1;
			#5 A=1; B=1; C=1; D=1; E=1; F=0;
			#5 A=1; B=1; C=1; D=1; E=1; F=1;
			#5 $finish;
		end
endmodule