module top_module (
	input clk,
	input L,		// select
	input r_in,		// mux 1
	input q_in,		// mux 0
	output reg Q);	

    always @(posedge clk) begin
        Q <= L ? r_in : q_in;
    end
    
endmodule
