/* In this file x3,x2,....y1,y0 are not written in seperate modules, in order to present design in a much more effective way we had made seperate modules for all the parts of this design
*/
/*
module mux2to1(in, sel, out);
 input[1:0]in;
 input sel;
 output out; 
 wire t1,t2,t3;

 not G1(t1,sel);
 and G2(t2,in[0],t1);
 and G3(t3,in[1],sel);
 or  G4(out, t2,t3);

endmodule

module mux4to1(in, sel, out);
 
 input [3:0]in;
 input [1:0]sel;
 output out;
 wire [1:0]t;

 mux2to1 M0 (in[1:0],sel[0],t[0]);
 mux2to1 M1 (in[3:2],sel[0],t[1]);
 mux2to1 M2 (t,sel[1],out);
 
 //assign out = in[sel];
 
 
endmodule



module digits_in_bcd(a, b, c, d, e, f, x0, x1, x2, x3, y0, y1, y2, y3);

 input a, b, c, d, e, f;
 output x0, x1, x2, x3, y0, y1, y2, y3;
 wire p1, p2, p3, p4, p5, p6, p7, p8, p9, p10, p11, p12;
 
 parameter h = 1'b1;
 parameter l = 1'b0; 
 

 xor G1(p1,e,f);
 xor G2(p2,~e,f);
 xor G3(p3,e,~f);
 xor G4(p4,~e,~f);
 and G5(p5,e,f);
 and G6(p6,~e,f);
 and G7(p7,e,~f);
 and G8(p8,~e,~f);
 or  G9(p9,e,f);
 or  G10(p10,~e,f);
 or  G11(p11,e,~f);
 or  G12(p12,~e,~f);
 
 wire [3:0]t;
 mux4to1 M0 (.in({e,p1,~e,p3}),.sel({c,d}),.out(t[0]));
 mux4to1 M1 (.in({e,f,h,f}),.sel({c,d}),.out(t[1]));
 mux4to1 M2 (.in({p11,~f,l,l}),.sel({c,d}),.out(t[2]));
 mux4to1 M3 (.in({p12,f,l,h}),.sel({c,d}),.out(t[3]));
 mux4to1 M4 (.in(t),.sel({b,a}),.out(y0));

 wire [3:0]s;
 mux4to1 M5 (.in({p8,p7,f,p6}),.sel({c,d}),.out(s[0]));
 mux4to1 M6 (.in({p9,p7,p11,p6}),.sel({c,d}),.out(s[1]));
 mux4to1 M7 (.in({p6,l,p11,p12}),.sel({c,d}),.out(s[2]));
 mux4to1 M8 (.in({p12,p6,p6,p6}),.sel({c,d}),.out(s[3]));
 mux4to1 M9 (.in(s),.sel({b,a}),.out(y1));

 wire [3:0]u;
 mux4to1 M10 (.in({f,~f,p5,e}),.sel({c,d}),.out(u[0]));
 mux4to1 M11 (.in({p12,p10,l,p12}),.sel({c,d}),.out(u[1]));
 mux4to1 M12 (.in({p11,l,p11,l}),.sel({c,d}),.out(u[2]));
 mux4to1 M13 (.in({l,l,p6,l}),.sel({c,d}),.out(u[3]));
 mux4to1 M14 (.in(u),.sel({b,a}),.out(y2));

 wire [3:0]v;
 mux4to1 M15 (.in({p7,f,p8,l}),.sel({c,d}),.out(v[0]));
 mux4to1 M16 (.in({l,l,l,l}),.sel({c,d}),.out(v[1]));
 mux4to1 M17 (.in({l,p12,l,l}),.sel({c,d}),.out(v[2]));
 mux4to1 M18 (.in({p5,p11,p5,l}),.sel({c,d}),.out(v[3]));
 mux4to1 M19 (.in(v),.sel({a,b}),.out(y3));

 wire [3:0]w;
 mux4to1 M20 (.in({l,l,l,l}),.sel({c,d}),.out(w[0]));
 mux4to1 M21 (.in({l,~e,p1,p1}),.sel({c,d}),.out(w[1]));
 mux4to1 M22 (.in({p5,p5,p5,p1}),.sel({c,d}),.out(w[2]));
 mux4to1 M23 (.in({p5,p5,p7,p3}),.sel({c,d}),.out(w[3]));
 mux4to1 M24 (.in(w),.sel({a,b}),.out(x3));

 wire [3:0]q;
 mux4to1 M25 (.in({f,p9,h,h}),.sel({c,d}),.out(q[0]));
 mux4to1 M26 (.in({p9,p7,p8,p8}),.sel({c,d}),.out(q[1]));
 mux4to1 M27 (.in({p12,p12,p12,p8}),.sel({c,d}),.out(q[2]));
 mux4to1 M28 (.in({~f,p12,p8,~p1}),.sel({c,d}),.out(q[3]));
 mux4to1 M29 (.in(t),.sel({a,b}),.out(x2));

 wire [3:0]r;
 mux4to1 M30 (.in({~f,p8,l,l}),.sel({c,d}),.out(r[0]));
 mux4to1 M31 (.in({p8,e,~p1,p8}),.sel({c,d}),.out(r[1]));
 mux4to1 M32 (.in({~f,~f,p12,p8}),.sel({c,d}),.out(r[2]));
 mux4to1 M33 (.in({p12,p12,p10,~p1}),.sel({c,d}),.out(r[3]));
 mux4to1 M34 (.in(r),.sel({a,b}),.out(x1));

 wire [3:0]z;
 mux4to1 M35 (.in({~f,p12,p9,h}),.sel({c,d}),.out(z[0]));
 mux4to1 M36 (.in({l,p10,p10,p8}),.sel({c,d}),.out(z[1]));
 mux4to1 M37 (.in({p7,p9,p7,~e}),.sel({c,d}),.out(z[2]));
 mux4to1 M38 (.in({p1,p7,p10,~e}),.sel({c,d}),.out(z[3]));
 mux4to1 M39 (.in(z),.sel({a,b}),.out(x0));


 reg [3:0]hu;
 reg [3:0]hi;
 reg [6:0]seg;
 reg [6:0]ram;
 
  hu = {x3, x2, x1, x0}; 
  hi = {y3, y2, y1, y0};


 always @(hu)
    begin
        case (hu) 
            0 : seg = 7'b0000001;
            1 : seg = 7'b1001111;
            2 : seg = 7'b0010010;
            3 : seg = 7'b0000110;
            4 : seg = 7'b1001100;
            5 : seg = 7'b0100100;
            6 : seg = 7'b0100000;
            7 : seg = 7'b0001111;
            8 : seg = 7'b0000000;
            9 : seg = 7'b0000100;
            
            default : seg = 7'b1111111; 
        endcase
    end
    
 always @(hi)
    begin
        case (hi) 
            0 : ram = 7'b0000001;
            1 : ram = 7'b1001111;
            2 : ram = 7'b0010010;
            3 : ram = 7'b0000110;
            4 : ram = 7'b1001100;
            5 : ram = 7'b0100100;
            6 : ram = 7'b0100000;
            7 : ram = 7'b0001111;
            8 : ram = 7'b0000000;
            9 : ram = 7'b0000100;
            
            default : ram = 7'b1111111; 
        endcase
    end

endmodule
 

*/

