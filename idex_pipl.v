


`timescale 1ns/10ps

module idex_pipl (
    reset,
    idex_reg,
    instruction,
    ra,
    rb,
    wa,
    im_gen,
    rda,
    rdb,
    alu_op,
    brnch,
    mem_rd,
    mem_to_rgs,
    mem_wr,
    alu_src,
    reg_wr
);


input reset;
output [152:0] idex_reg;
reg [152:0] idex_reg;
input [31:0] instruction;
input [4:0] ra;
input [4:0] rb;
input [4:0] wa;
input [31:0] im_gen;
input [31:0] rda;
input [31:0] rdb;
input [3:0] alu_op;
input [0:0] brnch;
input [0:0] mem_rd;
input [0:0] mem_to_rgs;
input [0:0] mem_wr;
input [0:0] alu_src;
input [0:0] reg_wr;




always @(rdb, alu_op, instruction, im_gen, wa, alu_src, reset, rb, brnch, reg_wr, mem_to_rgs, rda, mem_rd, ra, mem_wr) begin: IDEX_PIPL_ID_EX
    if ((reset == 1)) begin
        idex_reg[32-1:0] = instruction;
        idex_reg[(32 + 5)-1:32] = ra;
        idex_reg[((2 * 5) + 32)-1:(5 + 32)] = rb;
        idex_reg[((3 * 5) + 32)-1:((2 * 5) + 32)] = wa;
        idex_reg[((3 * 5) + (2 * 32))-1:((3 * 5) + 32)] = im_gen;
        idex_reg[((3 * 5) + (3 * 32))-1:((3 * 5) + (2 * 32))] = rda;
        idex_reg[((3 * 5) + (4 * 32))-1:((3 * 5) + (3 * 32))] = rdb;
        idex_reg[(((3 * 5) + (4 * 32)) + 4)-1:((3 * 5) + (4 * 32))] = alu_op;
        idex_reg[(((1 + (3 * 5)) + (4 * 32)) + 4)-1:(((0 + (3 * 5)) + (4 * 32)) + 4)] = brnch;
        idex_reg[(((2 + (3 * 5)) + (4 * 32)) + 4)-1:(((1 + (3 * 5)) + (4 * 32)) + 4)] = mem_rd;
        idex_reg[(((3 + (3 * 5)) + (4 * 32)) + 4)-1:(((2 + (3 * 5)) + (4 * 32)) + 4)] = mem_to_rgs;
        idex_reg[(((4 + (3 * 5)) + (4 * 32)) + 4)-1:(((3 + (3 * 5)) + (4 * 32)) + 4)] = mem_wr;
        idex_reg[(((5 + (3 * 5)) + (4 * 32)) + 4)-1:(((4 + (3 * 5)) + (4 * 32)) + 4)] = alu_src;
        idex_reg[(((6 + (3 * 5)) + (4 * 32)) + 4)-1:(((5 + (3 * 5)) + (4 * 32)) + 4)] = reg_wr;
    end
end

endmodule
