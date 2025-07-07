`timescale 1ns / 1ps

module ALU_tb;

    // Inputs
    reg [7:0] a, b;
    reg [3:0] operation;

    // Output
    wire [8:0] z;

    // Instantiate the ALU module
    ALU uut (
        .a(a),
        .b(b),
        .operation(operation),
        .z(z)
    );

    integer i;

    initial begin
        // Initial values
        a = 8'd12;         // You can change these
        b = 8'd4;
        operation = 4'd0;

        // Wait for global reset
        #10;

        // Test all operations from 0 to 9
        for (i = 0; i <= 9; i = i + 1) begin
            operation = i;
            #50;  // Delay for waveform visibility
        end

        // Stop simulation
        $finish;
    end

endmodule
