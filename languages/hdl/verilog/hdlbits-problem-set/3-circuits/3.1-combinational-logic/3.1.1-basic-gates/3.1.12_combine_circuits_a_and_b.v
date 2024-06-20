module circuit_a (input x, input y, output z);
    assign z = (x ^ y) & x;
endmodule


module circuit_b (input x, input y, output z);
    assign z = (x & y) | (~x & ~y);
endmodule



module top_module (input x, input y, output z);


    wire ia1_z, ia2_z, ib1_z, ib2_z;

    circuit_a ia1 (.x(x), .y(y), .z(ia1_z));
    circuit_a ia2 (.x(x), .y(y), .z(ia2_z));
    circuit_b ib1 (.x(x), .y(y), .z(ib1_z));
    circuit_b ib2 (.x(x), .y(y), .z(ib2_z));

    assign z = (ia1_z | ib1_z) ^ (ia2_z & ib2_z);


endmodule