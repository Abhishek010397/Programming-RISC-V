


`timescale 1ns/10ps

module pc_mux (
    reset,
    pc,
    pc_next,
    jmp_addr,
    pc_sel
);


input reset;
output [31:0] pc;
reg [31:0] pc;
input [31:0] pc_next;
input [31:0] jmp_addr;
input [0:0] pc_sel;




always @(pc_sel, reset, pc_next, jmp_addr) begin: PC_MUX_PMUX
    if ((reset == 1)) begin
        if (pc_sel) begin
            pc = jmp_addr;
        end
        else begin
            pc = pc_next;
        end
    end
end

endmodule
