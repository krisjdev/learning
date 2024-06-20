module top_module (
    input clk,
    input x,
    output z
); 

    reg [2:0] dffs;

    always @(posedge clk) begin
        
        dffs[0] <= x ^ dffs[0];
        dffs[1] <= x & ~dffs[1];
        dffs[2] <= x | ~dffs[2];
    end

    assign z = ~(|dffs);

endmodule
