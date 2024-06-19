module debounce_filter #
( parameter DEBOUNCE_LIMIT = 20 )
(
	input i_clk,
	input i_bouncy,
	output o_debounced
);

	// ceiling log2 to resize register at compile times
	reg [$clog2(DEBOUNCE_LIMIT)-1:0] r_count = 0;
	reg r_state = 1'b0;
	
	always @(posedge i_clk) begin
	
		// input is still bouncing and we've not yet reached the defined limit
		if (i_bouncy !== r_state && r_count < DEBOUNCE_LIMIT-1) begin
			r_count <= r_count + 1;
			
		// limit reached, so propagate the value and reset the counter
		end else if (r_count == DEBOUNCE_LIMIT-1) begin
			r_state <= i_bouncy;
			r_count <= 0;
			
		// input == output so just reset the counter
		end else begin
			r_count <= 0;
		end
	end
	
	assign o_debounced = r_state;

endmodule