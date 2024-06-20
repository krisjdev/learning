module top_module (
    input clk,
    input [7:0] in,
    output [7:0] pedge
);

    reg [7:0] prev_in;

    always @(posedge clk) begin
        prev_in <= in;


        // a posedge is when prev_in = 0 and in = 1
        pedge = ~prev_in & in;


        // this cant work because it does not store the previous input
        // for (integer i = 0; i < 8; i = i + 1) begin
        //     pedge[i] <= in[i] & ~pedge[i]
        // end 

    end

endmodule
