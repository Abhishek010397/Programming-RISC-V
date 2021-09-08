


`timescale 1ns/10ps

module inst_mem (
    reset,
    read_addr,
    instruction
);


input reset;
input [31:0] read_addr;
output [31:0] instruction;
reg [31:0] instruction;

wire [31:0] inst_ram [0:128-1];



always @(reset, read_addr, inst_ram[0], inst_ram[1], inst_ram[2], inst_ram[3], inst_ram[4], inst_ram[5], inst_ram[6], inst_ram[7], inst_ram[8], inst_ram[9], inst_ram[10], inst_ram[11], inst_ram[12], inst_ram[13], inst_ram[14], inst_ram[15], inst_ram[16], inst_ram[17], inst_ram[18], inst_ram[19], inst_ram[20], inst_ram[21], inst_ram[22], inst_ram[23], inst_ram[24], inst_ram[25], inst_ram[26], inst_ram[27], inst_ram[28], inst_ram[29], inst_ram[30], inst_ram[31], inst_ram[32], inst_ram[33], inst_ram[34], inst_ram[35], inst_ram[36], inst_ram[37], inst_ram[38], inst_ram[39], inst_ram[40], inst_ram[41], inst_ram[42], inst_ram[43], inst_ram[44], inst_ram[45], inst_ram[46], inst_ram[47], inst_ram[48], inst_ram[49], inst_ram[50], inst_ram[51], inst_ram[52], inst_ram[53], inst_ram[54], inst_ram[55], inst_ram[56], inst_ram[57], inst_ram[58], inst_ram[59], inst_ram[60], inst_ram[61], inst_ram[62], inst_ram[63], inst_ram[64], inst_ram[65], inst_ram[66], inst_ram[67], inst_ram[68], inst_ram[69], inst_ram[70], inst_ram[71], inst_ram[72], inst_ram[73], inst_ram[74], inst_ram[75], inst_ram[76], inst_ram[77], inst_ram[78], inst_ram[79], inst_ram[80], inst_ram[81], inst_ram[82], inst_ram[83], inst_ram[84], inst_ram[85], inst_ram[86], inst_ram[87], inst_ram[88], inst_ram[89], inst_ram[90], inst_ram[91], inst_ram[92], inst_ram[93], inst_ram[94], inst_ram[95], inst_ram[96], inst_ram[97], inst_ram[98], inst_ram[99], inst_ram[100], inst_ram[101], inst_ram[102], inst_ram[103], inst_ram[104], inst_ram[105], inst_ram[106], inst_ram[107], inst_ram[108], inst_ram[109], inst_ram[110], inst_ram[111], inst_ram[112], inst_ram[113], inst_ram[114], inst_ram[115], inst_ram[116], inst_ram[117], inst_ram[118], inst_ram[119], inst_ram[120], inst_ram[121], inst_ram[122], inst_ram[123], inst_ram[124], inst_ram[125], inst_ram[126], inst_ram[127]) begin: INST_MEM_ITCM
    if ((reset == 1)) begin
        instruction = inst_ram[read_addr];
    end
end

endmodule
