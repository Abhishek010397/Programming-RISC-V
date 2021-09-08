


`timescale 1ns/10ps

module ifid_pipl (
    reset,
    ifid_reg,
    instruction,
    pc
);


input reset;
output [63:0] ifid_reg;
reg [63:0] ifid_reg;
input [31:0] instruction;
input [31:0] pc;




always @(reset, pc, instruction) begin: IFID_PIPL_IF_ID
    if ((reset == 1)) begin
        ifid_reg[(32 + 32)-1:32] = pc;
        ifid_reg[32-1:0] = instruction;
    end
end

endmodule
