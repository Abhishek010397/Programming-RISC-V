


`timescale 1ns/10ps

module alu_control (
    reset,
    idex_reg,
    alu_decode
);


input reset;
input [152:0] idex_reg;
output [3:0] alu_decode;
reg [3:0] alu_decode;




always @(reset, idex_reg) begin: ALU_CONTROL_ALUCONT
    if ((reset == 1)) begin
        if ((idex_reg[(((3 * 5) + (4 * 32)) + 4)-1:((3 * 5) + (4 * 32))] == 2)) begin
            if ((idex_reg[32-1:25] == 0)) begin
                if ((idex_reg[15-1:12] == 0)) begin
                    alu_decode = 2;
                end
                else if ((idex_reg[15-1:12] == 1)) begin
                    alu_decode = 3;
                end
                else if ((idex_reg[15-1:12] == 2)) begin
                    alu_decode = 4;
                end
                else if ((idex_reg[15-1:12] == 3)) begin
                    alu_decode = 5;
                end
                else if ((idex_reg[15-1:12] == 4)) begin
                    alu_decode = 7;
                end
                else if ((idex_reg[15-1:12] == 5)) begin
                    alu_decode = 8;
                end
                else if ((idex_reg[15-1:12] == 6)) begin
                    alu_decode = 1;
                end
                else if ((idex_reg[15-1:12] == 7)) begin
                    alu_decode = 0;
                end
            end
            else if ((idex_reg[32-1:25] == 32)) begin
                if ((idex_reg[15-1:12] == 0)) begin
                    alu_decode = 6;
                end
                else if ((idex_reg[15-1:12] == 5)) begin
                    alu_decode = 9;
                end
            end
        end
        else if ((idex_reg[(((3 * 5) + (4 * 32)) + 4)-1:((3 * 5) + (4 * 32))] == 0)) begin
            alu_decode = 2;
        end
        else if ((idex_reg[(((3 * 5) + (4 * 32)) + 4)-1:((3 * 5) + (4 * 32))] == 7)) begin
            if ((idex_reg[15-1:12] == 0)) begin
                alu_decode = 7;
            end
        end
    end
end

endmodule
