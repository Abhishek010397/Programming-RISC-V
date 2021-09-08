


`timescale 1ns/10ps

module alu (
    reset,
    alu_decode,
    idex_reg,
    rdx,
    result
);


input reset;
input [3:0] alu_decode;
input [152:0] idex_reg;
input [31:0] rdx;
output [31:0] result;
reg [31:0] result;




always @(reset, alu_decode, idex_reg, rdx) begin: ALU_OPERATION
    if ((reset == 1)) begin
        case (alu_decode)
            'h0: begin
                result = (idex_reg[((3 * 5) + (3 * 32))-1:((3 * 5) + (2 * 32))] & rdx);
            end
            'h1: begin
                result = (idex_reg[((3 * 5) + (3 * 32))-1:((3 * 5) + (2 * 32))] | rdx);
            end
            'h2: begin
                result = (idex_reg[((3 * 5) + (3 * 32))-1:((3 * 5) + (2 * 32))] + rdx);
            end
            'h6: begin
                result = (idex_reg[((3 * 5) + (3 * 32))-1:((3 * 5) + (2 * 32))] - rdx);
            end
            'h7: begin
                result = (idex_reg[((3 * 5) + (3 * 32))-1:((3 * 5) + (2 * 32))] ^ rdx);
            end
            'h3: begin
                result = (idex_reg[((3 * 5) + (3 * 32))-1:((3 * 5) + (2 * 32))] << rdx);
            end
            'h8: begin
                result = $signed($signed(idex_reg[((3 * 5) + (3 * 32))-1:((3 * 5) + (2 * 32))]) >>> rdx);
            end
            'h4: begin
                result = ($signed(idex_reg[((3 * 5) + (3 * 32))-1:((3 * 5) + (2 * 32))]) < $signed(rdx)) ? 1'b1 : 1'b0;
            end
            'h5: begin
                result = (idex_reg[((3 * 5) + (3 * 32))-1:((3 * 5) + (2 * 32))] < rdx) ? 1'b1 : 1'b0;
            end
            'h9: begin
                if ((idex_reg[((3 * 5) + (3 * 32))-1:((3 * 5) + (2 * 32))][31] == 0)) begin
                    result = $signed($signed(idex_reg[((3 * 5) + (3 * 32))-1:((3 * 5) + (2 * 32))]) >>> rdx);
                end
                else if ((idex_reg[((3 * 5) + (3 * 32))-1:((3 * 5) + (2 * 32))][31] == 1)) begin
                    result = $signed($signed(idex_reg[((3 * 5) + (3 * 32))-1:((3 * 5) + (2 * 32))]) >>> rdx);
                    result[32-1:(31 - $signed({1'b0, rdx}))] = ((2 ** rdx) - 1);
                end
            end
        endcase
    end
end

endmodule
