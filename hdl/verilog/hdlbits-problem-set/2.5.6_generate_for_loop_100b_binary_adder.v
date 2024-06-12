module full_adder (
    input a, b, cin,
    output cout, sum
);

    assign {cout, sum} = a + b + cin;

endmodule

module top_module( 
    input [99:0] a, b,
    input cin,
    output [99:0] cout,
    output [99:0] sum );

    
    // TODO: how would you use instance arrays to solve this problem?
    // full_adder adder_init (.a(a[99]), .b(b[99]), .cin(cin), .cout(cout[99]), .sum(sum[99]));
    // full_adder adders[98:0] (.a(a), .b(b), .cin(cin), .cout(cout), .sum(sum));

    
    full_adder fa_init (.a(a[0]), .b(b[0]), .cin(cin), .cout(cout[0]), .sum(sum[0]));
    
    
    genvar i;
    generate

        //                                      v why is this necessary if they're already named?
        for (i = 1; i < 100; i = i + 1) begin : fa_block 
            full_adder fa (.a(a[i]), .b(b[i]), .cin(cout[i-1]), .cout(cout[i]), .sum(sum[i]));
        end

    endgenerate

endmodule