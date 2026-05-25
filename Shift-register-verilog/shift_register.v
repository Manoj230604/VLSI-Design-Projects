module shift_register (
    input clk,
    input reset,
    input shift_left,
    input shift_right,
    input serial_in,
    input [3:0] parallel_in,
    input load,
    output reg [3:0] data_out,
    output serial_out
);

assign serial_out = data_out[0]; // LSB as serial output

always @(posedge clk or posedge reset) begin
    if (reset)
        data_out <= 4'b0000;

    else if (load)
        data_out <= parallel_in;  // Load parallel data

    else if (shift_left)
        data_out <= {data_out[2:0], serial_in};

    else if (shift_right)
        data_out <= {serial_in, data_out[3:1]};
end

endmodule