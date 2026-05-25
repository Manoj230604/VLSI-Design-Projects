module shift_register_tb;

reg clk, reset;
reg shift_left, shift_right;
reg serial_in;
reg [3:0] parallel_in;
reg load;

wire [3:0] data_out;
wire serial_out;

shift_register uut (
    .clk(clk),
    .reset(reset),
    .shift_left(shift_left),
    .shift_right(shift_right),
    .serial_in(serial_in),
    .parallel_in(parallel_in),
    .load(load),
    .data_out(data_out),
    .serial_out(serial_out)
);

// Clock generation
always #5 clk = ~clk;

initial begin

    // ✅ Dump at beginning
    $dumpfile("shift.vcd");
    $dumpvars(0, shift_register_tb);

    clk = 0;
    reset = 1;
    shift_left = 0;
    shift_right = 0;
    load = 0;
    serial_in = 0;

    #10 reset = 0;

    // Load data (PISO)
    parallel_in = 4'b1011;
    load = 1; #10;
    load = 0;

    // Shift right
    repeat(4) begin
        shift_right = 1; #10;
    end
    shift_right = 0;

    // Shift left (SIPO)
    serial_in = 1;
    repeat(4) begin
        shift_left = 1; #10;
    end
    shift_left = 0;

    $finish;

end

endmodule