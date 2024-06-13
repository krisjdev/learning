module top_module (
    input too_cold,
    input too_hot,
    input mode,
    input fan_on,
    output heater,
    output aircon,
    output fan
); 


    // heating: mode = 1
    // cooling: mode = 0

    // if heating and too_cold = heater = 1, air conditioning = 0
    // if cooling and too_hot = air conditioning = 1, heater = 0

    // if heater or air conditoning or fan_on = fan = 1


    assign heater = mode == 1'b1 & too_cold ? 1'b1 : 1'b0;
    assign aircon = mode == 1'b0 & too_hot ? 1'b1 : 1'b0;
    assign fan = heater | aircon | fan_on ? 1'b1 : 1'b0;


endmodule
