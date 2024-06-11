module top_module ( 
    input clk, 
    input [7:0] d, 
    input [1:0] sel, 
    output [7:0] q 
);
    
    // module my_dff8 ( input clk, input [7:0] d, output [7:0] q );
    
    wire [7:0] dff_1_q, dff_2_q, dff_3_q;
    
    my_dff8 dff_1 (.clk(clk), .d(d), .q(dff_1_q));
    my_dff8 dff_2 (.clk(clk), .d(dff_1_q), .q(dff_2_q));
    my_dff8 dff_3 (.clk(clk), .d(dff_2_q), .q(dff_3_q));
    
    assign q = sel == 2'd0 ? d :
        	   sel == 2'd1 ? dff_1_q :
               sel == 2'd2 ? dff_2_q : dff_3_q;

endmodule
