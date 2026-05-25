module alu (
    input [3:0] A, B,
    input [2:0] op,
    output reg [3:0] Y
);

always @(*) begin
    case(op)
        3'b000: Y = A + B;
        3'b001: Y = A - B;
        3'b010: Y = A & B;
        3'b011: Y = A | B;
        default: Y = 4'b0000;
    endcase
end

endmodule