module ALU(
    input [7:0] a, b,
    input [3:0] operation,
    output reg [8:0] z
);

always @(*) begin
    case(operation)
        4'b0000: z = a + b;
        4'b0001: z = a - b;
        4'b0010: z = (b != 0) ? a / b : 9'b0; // handle divide-by-zero
        4'b0011: z = a * b;
        4'b0100: z = a & b;
        4'b0101: z = a | b;
        4'b0110: z = a ^ b;
        4'b0111: z = ~a;
        4'b1000: z = a << 1;
        4'b1001: z = a >> 1;
        default: z = 9'b000000000;
    endcase
end
