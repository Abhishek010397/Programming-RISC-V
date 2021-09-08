


`timescale 1ns/10ps

module pc_assign (
    reset,
    read_addr,
    pc
);


input reset;
output [31:0] read_addr;
reg [31:0] read_addr;
input [31:0] pc;




always @(reset, pc) begin: PC_ASSIGN_ASSIGN
    if ((reset == 1)) begin
        read_addr = pc;
    end
end

endmodule
