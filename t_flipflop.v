module t_flipflop(
    input  t,
    input  clk,
    input  reset,
    output Q,
    output Qnot
);

    wire D;

    // T flip-flop behavior:
    // T = 0 → hold
    // T = 1 → toggle (Qnot)
    multiplexer mux( .A(Q), .B(Qnot), .Sel(t), .Enable(1'b1), .Y(D));

    d_flipflop dff(.data(D), .clk(clk), .reset(reset), .Q(Q), .Qnot(Qnot));

endmodule
