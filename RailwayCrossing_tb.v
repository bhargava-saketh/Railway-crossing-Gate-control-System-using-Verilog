
`timescale 1ns / 1ps
module tb_RailwayCrossing;
    // Inputs
    reg rail_A;
    reg rail_B;
    reg rail_C;
    reg rail_D;
    reg reset;
    reg enable;
    // Outputs
    wire gate;
    wire red_light;
    // Instantiate the Unit Under Test (UUT)
    RailwayCrossing uut (
        .gate(gate), 
        .red_light(red_light),
        .rail_A(rail_A), 
        .rail_B(rail_B),
        .rail_C(rail_C),
        .rail_D(rail_D),
        .reset(reset), 
        .enable(enable) 
    );
    initial begin
        // Initialize Inputs
        rail_A = 0;
        rail_B = 0;
        rail_C = 0;
        rail_D = 0;
        reset = 1;
        enable = 1;
        #100 reset = 0;
        #50 rail_A = 1;
        #100 rail_B = 1;
        #100 rail_C = 0; // Change to 0
        #100 rail_D = 1;
        #100 reset = 0;
        #50 rail_A = 0;
        #100 rail_B = 0;
        #100 rail_C = 1;
        #100 rail_D = 0; // Change to 0
    end
endmodule
