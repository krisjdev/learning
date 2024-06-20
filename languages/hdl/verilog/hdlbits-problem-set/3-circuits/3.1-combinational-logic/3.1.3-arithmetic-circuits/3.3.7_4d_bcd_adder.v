module top_module ( 
    input [15:0] a, b,
    input cin,
    output cout,
    output [15:0] sum );


    wire bcd1_cout, bcd2_cout, bcd3_cout;

    bcd_fadd bcd1 (.a(a[3:0]), .b(b[3:0]), .cin(cin), .cout(bcd1_cout), .sum(sum[3:0]));
    bcd_fadd bcd2 (.a(a[7:4]), .b(b[7:4]), .cin(bcd1_cout), .cout(bcd2_cout), .sum(sum[7:4]));
    bcd_fadd bcd3 (.a(a[11:8]), .b(b[11:8]), .cin(bcd2_cout), .cout(bcd3_cout), .sum(sum[11:8]));
    bcd_fadd bcd4 (.a(a[15:12]), .b(b[15:12]), .cin(bcd3_cout), .cout(cout), .sum(sum[15:12]));

endmodule
