/*

x       y       z
0       0       1
0       1       0
1       0       0
1       1       1


*/


module top_module ( input x, input y, output z );

    // or implement as xnor
    assign z = (x & y) | (~x & ~y);
    
endmodule
