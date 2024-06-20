module top_module( 
    input [3:0] in,
    output [2:0] out_both,
    output [3:1] out_any,
    output [3:0] out_different );


    /*

        in[3]   in[2]   in[1]   in[0]
        0       1       1       0

        out_both[2]     out_both[1]     out_both[0]
          2 & 3            1 & 2       in[0] & in[1]


        out_any[3]      [2]         [1]
        3 | 2           2 | 1       1 | 0        


        out_diff[3]     [2]         [1]         [0]
        3 ^ 0           2 ^ 3       1 ^ 2       1 ^ 0

    */


    assign out_both = {&in[3:2], &in[2:1], &in[1:0]};
    assign out_any = {|in[3:2], |in[2:1], |in[1:0]};
    assign out_different = {in[3] ^ in[0], ^in[3:2], ^in[2:1], ^in[1:0]};

endmodule