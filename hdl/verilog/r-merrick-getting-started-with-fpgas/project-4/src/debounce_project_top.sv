module debounce_project_top (
	input i_clk,
	input i_switch_1,
	output o_led_1
);

	wire w_debounced_switch;
	
	debounce_filter # (.DEBOUNCE_LIMIT(250000)) debouncer (
		.i_clk(i_clk), .i_bouncy(i_switch_1), .o_debounced(w_debounced_switch)
	);
		
	led_toggle_project led_proj_inst (.i_clk(i_clk), .i_switch_1(w_debounced_switch), .o_led_1(o_led_1));

endmodule