module risc_tb;

reg clk, reset;

risc_cpu uut(clk, reset);

always #5 clk = ~clk;

initial begin
    clk = 0;
    reset = 1;

    #10 reset = 0;

    #100 $finish;
end

endmodule