module alu_2bit_tb;

reg [1:0] A;
reg [1:0] B;
reg [2:0] Sel;

wire [2:0] Result;

alu_2bit uut (
    .A(A),
    .B(B),
    .Sel(Sel),
    .Result(Result)
);

initial begin

$dumpfile("alu.vcd");
$dumpvars(0, alu_2bit_tb);

$display("A B Sel Result");

A = 2'b01;
B = 2'b10;

Sel = 3'b000; #10;
Sel = 3'b001; #10;
Sel = 3'b010; #10;
Sel = 3'b011; #10;
Sel = 3'b100; #10;

$finish;

end

endmodule