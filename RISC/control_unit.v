module control_unit (
    input [3:0] opcode,
    output reg [2:0] alu_op,
    output reg reg_write
);

always @(*) begin
    case(opcode)
        4'b0000: begin alu_op = 3'b000; reg_write = 1; end // ADD
        4'b0001: begin alu_op = 3'b001; reg_write = 1; end // SUB
        4'b0010: begin alu_op = 3'b010; reg_write = 1; end // AND
        4'b0011: begin alu_op = 3'b011; reg_write = 1; end // OR
        default: begin alu_op = 3'b000; reg_write = 0; end
    endcase
end

endmodule