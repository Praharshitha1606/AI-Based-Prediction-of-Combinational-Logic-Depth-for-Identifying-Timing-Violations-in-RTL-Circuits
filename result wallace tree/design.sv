module wallace_4bit (
    input [3:0] A,  // 4-bit multiplicand
    input [3:0] B,  // 4-bit multiplier
    output [7:0] P  // 8-bit product
);
    wire [15:0] pp; // Partial products
    wire [7:0] s, c; // Sum and carry
    
    // Generate Partial Products
    assign pp[0]  = A[0] & B[0];
    assign pp[1]  = A[1] & B[0];
    assign pp[2]  = A[2] & B[0];
    assign pp[3]  = A[3] & B[0];
    
    assign pp[4]  = A[0] & B[1];
    assign pp[5]  = A[1] & B[1];
    assign pp[6]  = A[2] & B[1];
    assign pp[7]  = A[3] & B[1];
    
    assign pp[8]  = A[0] & B[2];
    assign pp[9]  = A[1] & B[2];
    assign pp[10] = A[2] & B[2];
    assign pp[11] = A[3] & B[2];
    
    assign pp[12] = A[0] & B[3];
    assign pp[13] = A[1] & B[3];
    assign pp[14] = A[2] & B[3];
    assign pp[15] = A[3] & B[3];

    // Wallace Tree Reduction
    half_adder ha1 (pp[1], pp[4], s[0], c[0]);
    full_adder fa1 (pp[2], pp[5], pp[8], s[1], c[1]);
    full_adder fa2 (pp[3], pp[6], pp[9], s[2], c[2]);
    full_adder fa3 (pp[7], pp[10], pp[13], s[3], c[3]);
    full_adder fa4 (pp[11], pp[14], pp[15], s[4], c[4]);

    // Final Summation using Ripple Carry Adder
    assign P[0] = pp[0];
    ripple_adder ra1 ({c[3], s[3], s[2], s[1], s[0]}, {c[4], pp[12], c[2], c[1], c[0]}, P[7:1]);

endmodule

// Half Adder Module
module half_adder (
    input a, b,
    output sum, carry
);
    assign sum = a ^ b;
    assign carry = a & b;
endmodule

// Full Adder Module
module full_adder (
    input a, b, cin,
    output sum, carry
);
    assign sum = a ^ b ^ cin;
    assign carry = (a & b) | (b & cin) | (a & cin);
endmodule

// Ripple Carry Adder Module
module ripple_adder (
    input [4:0] A, B,
    output [5:0] sum
);
    wire c1, c2, c3, c4;
    
    full_adder fa1 (A[0], B[0], 1'b0, sum[0], c1);
    full_adder fa2 (A[1], B[1], c1, sum[1], c2);
    full_adder fa3 (A[2], B[2], c2, sum[2], c3);
    full_adder fa4 (A[3], B[3], c3, sum[3], c4);
    full_adder fa5 (A[4], B[4], c4, sum[4], sum[5]);
endmodule
