module instr_mem (
    input [3:0] addr,
    output reg [7:0] instr
);

always @(*) begin
    case(addr)
        0: instr = 8'b0000_0001; // ADD
        1: instr = 8'b0001_0010; // SUB
        2: instr = 8'b0010_0001; // AND
        default: instr = 8'b1111_0000; // NOP
    endcase
end

endmodule