// synthesis verilog_input_version verilog_2001
module top_module (
    input      cpu_overheated,
    output reg shut_off_computer,
    input      arrived,
    input      gas_tank_empty,
    output reg keep_driving  ); //

    // Fix the bugs so that you will shut off the computer only if it's really overheated, and stop driving if you've arrived at your destination or you need to refuel.

    always @(*) begin
        if (cpu_overheated) begin
           shut_off_computer = 1;
        end else begin
            shut_off_computer = 0;
        end
    end

    always @(*) begin
        if (arrived | gas_tank_empty) begin
            keep_driving = 0;
        end else begin
            keep_driving = 1;
        end
    end

endmodule
