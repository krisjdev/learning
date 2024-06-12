/*
You are provided with a BCD one-digit adder named bcd_fadd that adds two BCD digits and carry-in, and produces a sum and carry-out. 

module bcd_fadd (
    input [3:0] a, // 4 bits wide
    input [3:0] b,
    input     cin,
    output   cout,
    output [3:0] sum );

Instantiate 100 copies of bcd_fadd to create a 100-digit BCD ripple-carry adder. 
Your adder should add two 100-digit BCD numbers (packed into 400-bit vectors) and a carry-in to produce a 100-digit sum and carry out. 

*/


module top_module( 
    input [399:0] a, b,
    input cin,
    output cout,
    output [399:0] sum );


    wire [99:0] intermediate_cout;
    assign cout = intermediate_cout[99];

    // 0:       a/b=  3:0      cin= 0
    // 1:             7:4      cin= 1
    // 2:             11:8     cin= 2

    //                4*i+3 : 4*i

    bcd_fadd bcd_init (.a(a[3:0]), .b(b[3:0]), .cin(cin), .cout(intermediate_cout[0]), .sum(sum[3:0]));

    genvar i;

    generate

        for (i = 1; i < 100; i = i + 1) begin : gen_bcd_block
            
            bcd_fadd bcd_adder (.a(a[4*i+3 : 4*i]), .b(b[4*i+3 : 4*i]), .cin(intermediate_cout[i-1]), .cout(intermediate_cout[i]), .sum(sum[4*i+3 : 4*i]));

        end

    endgenerate


endmodule
