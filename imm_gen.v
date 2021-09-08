


`timescale 1ns/10ps

module imm_gen (
    reset,
    ifid_reg,
    im_gen,
    padz,
    padx
);


input reset;
input [63:0] ifid_reg;
output [31:0] im_gen;
reg [31:0] im_gen;
input [19:0] padz;
input [19:0] padx;




always @(reset, padx, ifid_reg, padz) begin: IMM_GEN_IMMGEN
    if ((reset == 1)) begin
        if ((ifid_reg[7-1:0] == 3)) begin
            im_gen[12-1:0] = ifid_reg[32-1:20];
        end
        else if ((ifid_reg[7-1:0] == 35)) begin
            im_gen[12-1:5] = ifid_reg[32-1:25];
            im_gen[5-1:0] = ifid_reg[12-1:7];
        end
        else if ((ifid_reg[7-1:0] == 99)) begin
            im_gen[12] = ifid_reg[31];
            im_gen[11-1:5] = ifid_reg[31-1:25];
            im_gen[11] = ifid_reg[7];
            im_gen[5-1:1] = ifid_reg[12-1:8];
            im_gen[0] = 0;
        end
        if ((ifid_reg[31] == 0)) begin
            im_gen[32-1:(31 - 20)] = padz;
        end
        else begin
            im_gen[32-1:(31 - 20)] = padx;
        end
    end
end

endmodule
