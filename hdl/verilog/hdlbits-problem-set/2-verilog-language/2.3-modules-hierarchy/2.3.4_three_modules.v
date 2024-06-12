module top_module ( input clk, input d, output q );

    // module my_dff ( input clk, input d, output q );
    
    wire dff_1_q, dff_2_q;
    
    my_dff dff_1 (.clk(clk), .d(d), .q(dff_1_q));
    my_dff dff_2 (.clk(clk), .d(dff_1_q), .q(dff_2_q));
    my_dff dff_3 (.clk(clk), .d(dff_2_q), .q(q));
    
endmodule
