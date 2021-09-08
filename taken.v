



`timescale 1ns/10ps

module taken (
    result,
    brnch,
    pc_sel
);


input [31:0] result;
input [0:0] brnch;
output [0:0] pc_sel;
reg [0:0] pc_sel;




always @(result, brnch) begin: TAKEN_TAKE
    if (((result == 0) & brnch)) begin
        pc_sel = 1'b1;
    end
    else begin
        pc_sel = 1'b0;
    end
end

endmodule
