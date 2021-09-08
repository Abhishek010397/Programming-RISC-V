

`timescale 1ns/10ps

module decode (
    reset,
    ifid_reg,
    ra,
    rb,
    wa,
    opcode
);


input reset;
input [63:0] ifid_reg;
output [4:0] ra;
reg [4:0] ra;
output [4:0] rb;
reg [4:0] rb;
output [4:0] wa;
reg [4:0] wa;
output [6:0] opcode;
reg [6:0] opcode;




always @(reset, ifid_reg) begin: DECODE_DCODE
    if ((reset == 1)) begin
        if ((ifid_reg[7-1:0] == 51)) begin
            ra = ifid_reg[20-1:15];
            rb = ifid_reg[25-1:20];
            opcode = ifid_reg[7-1:0];
            wa = ifid_reg[12-1:7];
        end
        else if ((ifid_reg[7-1:0] == 3)) begin
            ra = ifid_reg[20-1:15];
            opcode = ifid_reg[7-1:0];
            wa = ifid_reg[12-1:7];
        end
        else if ((ifid_reg[7-1:0] == 35)) begin
            ra = ifid_reg[20-1:15];
            rb = ifid_reg[25-1:20];
            opcode = ifid_reg[7-1:0];
            wa = ifid_reg[25-1:20];
        end
        else if ((ifid_reg[7-1:0] == 99)) begin
            ra = ifid_reg[20-1:15];
            rb = ifid_reg[25-1:20];
            opcode = ifid_reg[7-1:0];
        end
    end
end

endmodule
