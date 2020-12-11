// this is the behavioural code.
// this has been made using kmap
module human(a,b,c,d,e,f,seg,ram);
input a,b,c,d,e,f;
  //output a1,a2,a3,a4,a5,a6,a7,b1,b2,b3,b4,b5,b6,b7;
   output [6:0] seg;
     reg [6:0] seg;
output [6:0] ram;
     reg [6:0] ram;
wire [3:0] hu;
wire [3:0] hi;

or g1(hu[0],b&c&~e&~f,~a&~b&d&~f,a&c&d&~e,~b&~d&e&~f,~a&~c&d&~e,b&c&~d&f,~a&~b&~c&~f,a&~c&e&~f,~a&~b&c&f,a&b&~d&e&f,a&~b&~c&d&f);
or g2(hu[1],a&~c&~f,a&~e&~f,b&~f&~d&~e,b&c&~e&~f,a&~b&~d&~f,b&~c&d&~f&e,a&~b&c&~d&e,a&b&~c&d&e,a&b&c&d&e&f);
or g3(hu[2],~a&~b&f,~a&~b&c,c&~e&~f,a&~c&~f,~b&~d&~e&f,b&~c&d&~f&e,c&~b&~d&&e,a&b&~c&d&e,a&b&c&d&e&f);
or g4(hu[3],b&c&e&~f,a&~c&e&f,~a&b&~c&d&~e,~a&b&c&~e&f,a&~b&~d&e&f,a&c&~d&f&~e,a&c&d&e&~f);
or g5(hi[0],b&d&f,~b&~c&~d&e,~b&~c&~f&e,~c&~d&e&~f,~a&c&~d&~e,~a&b&~d&e,a&~b&~c&~f,a&~b&~c&~f,a&b&c&d,~a&~c&d&~e&f,~a&~b&c&~e&~f,~a&c&d&e&f,a&b&~c&~d&~e);
or g6(hi[1],a&b&~e&f,c&~e&f&d,~b&~f&a&c,b&e&~a&~d,a&b&~d&~f&~c,~a&b&~c&~d&f,~a&b&c&~d&~f,~a&~b&c&~d&f,~a&~c&d&e&~f,a&~b&c&~d&e,~a&~b&~c&~d&~e&~f);
or g7(hi[2],~a&b&d&~e,b&~c&~c&~f,~b&~d&e&f,a&~b&~d&~f,~a&~b&c&d&e,~a&~c&~d&~e&f,~a&b&c&d&~f,~a&b&~c&d&f,a&b&~d&~e&f,a&~b&~c&d&~f);
or g8(hi[3],a&~c&d&~f,~a&~b&~c&d&f,~b&~c&d&~e&f,a&b&~c&f&e,~a&~b&~c&~d&e&~f,~a&~b&c&~d&~e&~f);

   // reg [4:0] ram;
   // reg [4:0] krishna;
   //ram[0]=x0;
   //wire reg [4:0] c = {1,0,1,1}; 
    //segment7 s1 (hu,sel);
   //segment7 s2 (hi,sem);    
   //output [6:0] seg;
   //  reg [6:0] seg;

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
        case (hu) 
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


