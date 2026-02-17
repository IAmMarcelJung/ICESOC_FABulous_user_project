module top(input wire clk, input wire [9:0] io_in, output wire [9:0] io_out, io_oeb);
    wire rst = io_in[0];
    wire en = io_in[1];
    reg [15:0] ctr;

    always @(posedge clk)
        if (en)
            if (rst)
                ctr <= 0;
            else
                ctr <= ctr + 1'b1;
        else
            ctr <= ctr;

    // assign io_out =  ctr[15:8];
    assign io_out =  ctr[9:0];
    assign io_oeb = 10'h1;
endmodule
