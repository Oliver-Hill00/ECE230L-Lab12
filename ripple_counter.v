module ripple_counter(
    input clk,
    input reset,
    output [2:0] q
);

wire [2:0]reset_rc;
wire [2:0] D_out;

assign reset_rc = (reset) ? 3'b000 : (D_out[2] && D_out[1] && D_out[0]) ? 3'b000 : D_out;

t_flipflop tff1 (.t(1'b1), .clk(clk), .reset(reset), .Q(q[0]), .Qnot());
t_flipflop tff2 (.t(1'b1), .clk(q[0]), .reset(reset), .Q(q[1]), .Qnot());
t_flipflop tff3 (.t(1'b1), .clk(q[1]), .reset(reset), .Q(q[2]), .Qnot()); 

//not sure if we need to assign these 
//assign q[0] = w1;
//assign q[1] = w2;
//assign q[2] = w3;

endmodule