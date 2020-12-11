module bcd_to_7_segment_decoder (
input i0, i1, i2, i3,
output a, b, c, d, e, f, g
);
wire ip0,ip1,ip2,a1,b1,d1,d2,d3,d4,e1,e2,f1,f2,f3,g1,g2;
 
 not U0(ip0,i0);
 not U1(ip1,i1);
 not U2(ip2,i2);
 //out put for a
 xnor U3(a1,i2,i0);
 or U4(a,i3,i1,a1);
 
 //output for b
 xnor U5(b1,i1,i0);
 or U6(b,ip2,b1);
 
 //output for c
 or U7(c,i2,ip1,i0);
 
 //output for d
 and U8(d1,i1,ip0);
 and U9(d2,ip2,ip0);
 and U10(d3,ip2,i1);
 and U11(d4,i2,ip1,i0);
 or U12(d,d1,d2,d3,d4);
 
 //output for e
 and U13(e1,i1,ip0);
 and U14(e2,ip2,ip0);
 or U15(e,e1,e2);
 
 //output for f
 and U16(f1,i2,ip1);
 and U17(f2,i2,ip0);
 and U18(f3,ip1,ip0);
 or U19(f,i3,f1,f2,f3);
 
 //output for g
 xor U20(g1,i2,i1);
 and U21(g2,i1,ip0);
 or U22(g,i3,g1,g2);
endmodule