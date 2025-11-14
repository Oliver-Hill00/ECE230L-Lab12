module d_flipflop(
    input  data,
    input  clk,
    input  reset,
    output reg Q,
    output Qnot
);

    always @(posedge clk or posedge reset) begin
        if (reset)
            Q <= 1'b0;
        else
            Q <= data;
    end

    assign Qnot = ~Q;

endmodule
