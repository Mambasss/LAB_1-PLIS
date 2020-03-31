module lab_1(
input [9:0] sw,
output [6:0] hex,
output AN
 );

reg [3:0] mux; 
wire f;
wire [3:0] dc1;
wire [3:0] dc2;
wire [3:0] new_sw;
assign AN=8'b1111_1110;
assign dc1=sw[0]+sw[1]+sw[2]+sw[3];
assign dc2=sw[7:4]|4'b1101
assign f=(sw[0]^sw[1])||(sw[2]^sw[3]);
always@(*) begin
    case(sw[9:8])
    2'b00: mux=dc1;
    2'b01: mux=dc2;
    2'b10: mux=f;
    2'b11: mux=sw[3:0];
    endcase
 end 
  dectohex dec0
 (.dec(mux),
 .hex(hex)
 );
endmodule
