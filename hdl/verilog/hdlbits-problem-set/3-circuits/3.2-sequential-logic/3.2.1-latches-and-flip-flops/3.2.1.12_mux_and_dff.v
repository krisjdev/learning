module top_module (
    input clk,
    input w, R, E, L,
    output Q
);
    // w: mux 0.1
    // Q: mux 0.0
    
    // R: mux 1.1
    // feed from mux 0: mux 1.0
    
    // L: mux 1 sel
    // E: mux 0 sel
    
    wire mux0_o, mux1_o;

    assign mux0_o = E ? w : Q;
    assign mux1_o = L ? R : mux0_o;

    always @ (posedge clk) begin
        
        Q <= mux1_o;

    end

endmodule
