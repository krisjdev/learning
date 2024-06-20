module top_module(
    input [31:0] a,
    input [31:0] b,
    input sub,
    output [31:0] sum
);
    
    // module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    wire adder_1_cout;
    wire [15:0] adder_1_sum, adder_2_sum;
    
    wire [31:0] xored_b;
    assign xored_b = b ^ {32{sub}};
    
    add16 adder_1 (.a(a[15:0]), .b(xored_b[15:0]), .cin(sub), .sum(adder_1_sum), .cout(adder_1_cout));
    add16 adder_2 (.a(a[31:16]), .b(xored_b[31:16]), .cin(adder_1_cout), .sum(adder_2_sum), .cout());
    
    assign sum = {adder_2_sum, adder_1_sum};
    

endmodule
