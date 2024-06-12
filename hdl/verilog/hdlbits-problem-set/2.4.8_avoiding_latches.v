// synthesis verilog_input_version verilog_2001
module top_module (
    input [15:0] scancode,
    output reg left,
    output reg down,
    output reg right,
    output reg up  ); 


    always @(*) begin
        
        left = 1'b0; right = 1'b0; up = 1'b0; down = 1'b0;

        case (scancode)

            16'he06b: left = 1'b1;
            16'he072: down = 1'b1;
            16'he074: right = 1'b1;
            16'he075: up = 1'b1;
            // no need for default case as statements on line 12 handle it

        endcase

    end

endmodule
