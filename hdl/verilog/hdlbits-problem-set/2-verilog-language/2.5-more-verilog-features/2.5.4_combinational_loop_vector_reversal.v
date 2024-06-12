module top_module( 
    input [99:0] in,
    output [99:0] out
);

    always @(*) begin
        
        for (integer i = 0; i < 100; i = i + 1) begin
            // i = 0 : out[0] = in[99] ... i = 1 : out[1] = in[99-1] == in[98] etc..
            out[i] = in[99-i];

        end

    end

endmodule
