


`timescale 1ns/10ps

module control (
    reset,
    opcode,
    brnch,
    mem_rd,
    mem_to_rgs,
    alu_op,
    mem_wr,
    alu_src,
    reg_wr
);


input reset;
input [6:0] opcode;
output [0:0] brnch;
reg [0:0] brnch;
output [0:0] mem_rd;
reg [0:0] mem_rd;
output [0:0] mem_to_rgs;
reg [0:0] mem_to_rgs;
output [3:0] alu_op;
reg [3:0] alu_op;
output [0:0] mem_wr;
reg [0:0] mem_wr;
output [0:0] alu_src;
reg [0:0] alu_src;
output [0:0] reg_wr;
reg [0:0] reg_wr;




always @(reset, opcode) begin: CONTROL_CONT
    if ((reset == 1)) begin
        case (opcode)
            'h33: begin
                alu_src = 1'b0;
                mem_to_rgs = 1'b0;
                reg_wr = 1'b1;
                mem_rd = 1'b0;
                mem_wr = 1'b0;
                brnch = 1'b0;
                alu_op = 2;
            end
            'h3: begin
                alu_src = 1'b1;
                mem_to_rgs = 1'b1;
                reg_wr = 1'b1;
                mem_rd = 1'b1;
                mem_wr = 1'b0;
                brnch = 1'b0;
                alu_op = 0;
            end
            'h23: begin
                alu_src = 1'b1;
                mem_to_rgs = 1'b0;
                reg_wr = 1'b0;
                mem_rd = 1'b0;
                mem_wr = 1'b1;
                brnch = 1'b0;
                alu_op = 0;
            end
            'h63: begin
                alu_src = 1'b0;
                mem_to_rgs = 1'b0;
                reg_wr = 1'b0;
                mem_rd = 1'b0;
                mem_wr = 1'b0;
                brnch = 1'b1;
                alu_op = 7;
            end
        endcase
    end
end

endmodule
