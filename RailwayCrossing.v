
`timescale 1ns / 1ps
module RailwayCrossing (input rail_A, input rail_B, input rail_C, input rail_D, input reset, input enable, output reg gate, output reg red_light);
    reg present_state, next_state;
    always @ (posedge reset or posedge enable)
    if (reset)
        present_state <= 1'b0;
    else if (enable)
        present_state <= next_state;

    always @ (posedge present_state or posedge rail_A or posedge rail_B or posedge rail_C or posedge rail_D)
        case (present_state)
            1'b0: if (rail_A || rail_B || rail_C || rail_D)
                    next_state <= 1'b1;
                  else
                    next_state <= 1'b0;
            1'b1: if (!(rail_A || rail_B || rail_C || rail_D))
                    next_state <= 1'b0;
                  else
                    next_state <= 1'b1;
            default: next_state <= 1'b0;
        endcase

    always @ (posedge present_state or posedge rail_A or posedge rail_B or posedge rail_C or posedge rail_D)
        case (present_state)
            1'b0: begin
                    red_light <= 1'b0;
                    gate <= 1'b0;
                  end
            1'b1: begin
                    red_light <= 1'b1;
                    gate <= 1'b1;
                  end
            default: begin
                    red_light <= 1'b0;
                    gate <= 1'b0;
                  end
        endcase
endmodule
