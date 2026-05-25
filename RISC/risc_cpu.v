module risc_cpu (
    input clk, reset
);

wire [3:0] pc_out;
wire [7:0] instr;

wire [3:0] A, B, result;
wire [2:0] alu_op;
wire reg_write;

pc pc1(clk, reset, pc_out);
instr_mem im1(pc_out, instr);

control_unit cu(instr[7:4], alu_op, reg_write);

reg_file rf(
    clk,
    instr[3:2],
    instr[1:0],
    instr[3:2],
    result,
    reg_write,
    A,
    B
);

alu alu1(A, B, alu_op, result);

endmodule