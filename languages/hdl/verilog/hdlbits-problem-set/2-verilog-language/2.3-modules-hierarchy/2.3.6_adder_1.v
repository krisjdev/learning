module top_module(
    input [31:0] a,
    input [31:0] b,
    output [31:0] sum
);

    // module add16 ( input[15:0] a, input[15:0] b, input cin, output[15:0] sum, output cout );
    
    wire adder_1_cout;
    wire [15:0] adder_1_sum, adder_2_sum;
    
    add16 adder_1 (.a(a[15:0]), .b(b[15:0]), .cin(1'b0), .sum(adder_1_sum), .cout(adder_1_cout));
    add16 adder_2 (.a(a[31:16]), .b(b[31:16]), .cin(adder_1_cout), .sum(adder_2_sum), .cout());
    
    assign sum = {adder_2_sum, adder_1_sum};
    
endmodule
