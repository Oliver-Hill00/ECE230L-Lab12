module top (
    input btnU, //reset
    input btnC, //input clk
    output [6:0]led
);

wire [2:0] rip;
wire [2:0] mod_Q;
wire tff_mod;

//ripple counter call
ripple_counter rc( .clk(btnC), .reset(btnU), .q(rip));

//module counter call
modulo_counter mc (.clk(btnC), .reset(btnU), .Y(mod_Q), .modCountOut(tff_mod));

//LED output assignments
assign led[0] = rip[0];
assign led[1] = rip[1];
assign led[2] = rip[2];

assign led[3] = mod_Q[0];
assign led[4] = mod_Q[1];
assign led[5] = mod_Q[2];

assign led[6] = tff_mod;

endmodule