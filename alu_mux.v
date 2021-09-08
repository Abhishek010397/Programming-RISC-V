


`timescale 1ns/10ps

module alu_mux (
    reset,
    im_gen,
    rdb,
    rdx,
    alu_src
);


input reset;
input [31:0] im_gen;
input [31:0] rdb;
output [31:0] rdx;
reg [31:0] rdx;
input [0:0] alu_src;




always @(alu_src, im_gen, rdb, reset) begin: ALU_MUX_AMUX
    if ((reset == 1)) begin
        if (alu_src) begin
            rdx = im_gen;
        end
        else begin
            rdx = rdb;
        end
    end
end

endmodule
