module reg_file (
    input clk,
    input [1:0] addr1, addr2, addr_write,
    input [3:0] data_in,
    input we,
    output [3:0] data1, data2
);

reg [3:0] regfile [3:0];

assign data1 = regfile[addr1];
assign data2 = regfile[addr2];

always @(posedge clk) begin
    if (we)
        regfile[addr_write] <= data_in;
end

endmodule