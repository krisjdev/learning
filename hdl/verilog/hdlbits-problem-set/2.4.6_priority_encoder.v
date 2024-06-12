// synthesis verilog_input_version verilog_2001
module top_module (
    input [3:0] in,
    output reg [1:0] pos  );



    always @(*) begin

        casez (in)

            4'bzzz1: pos = 2'h0;
            4'bzz10: pos = 2'h1;
            4'bz100: pos = 2'h2;
            4'b1000: pos = 2'h3;
            default: pos = 2'h0;

        endcase

    end

endmodule
