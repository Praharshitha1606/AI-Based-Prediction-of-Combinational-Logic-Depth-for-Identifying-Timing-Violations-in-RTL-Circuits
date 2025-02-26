`timescale 1ns/1ps
module tb;

    reg [3:0] A, B;  // 4-bit inputs
    wire [7:0] P;    // 8-bit output
    integer i, j;

    // Instantiate the Wallace Tree Multiplier module
    wallace_4bit dut (A, B, P);

    initial begin
        $monitor($time, "ns\t A=%b, B=%b | P=%b (%d)", A, B, P, P);
        
        for (i = 0; i < 16; i = i + 1) begin
            for (j = 0; j < 16; j = j + 1) begin
                A = i;
                B = j;
                #5;
            end
        end
    end

    initial begin
        $dumpfile("wallace_4bit.vcd");
        $dumpvars(1, dut);
    end

endmodule
