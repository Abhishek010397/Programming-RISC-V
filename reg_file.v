


`timescale 1ns/10ps

module reg_file (
    reset,
    clk,
    ra,
    rb,
    wa,
    wda,
    reg_wr,
    rda,
    rdb
);


input reset;
input [0:0] clk;
input [4:0] ra;
input [4:0] rb;
input [4:0] wa;
input [31:0] wda;
input [0:0] reg_wr;
output [31:0] rda;
reg [31:0] rda;
output [31:0] rdb;
reg [31:0] rdb;

reg [31:0] registers [0:32-1];



always @(reset, rb, ra, registers[0], registers[1], registers[2], registers[3], registers[4], registers[5], registers[6], registers[7], registers[8], registers[9], registers[10], registers[11], registers[12], registers[13], registers[14], registers[15], registers[16], registers[17], registers[18], registers[19], registers[20], registers[21], registers[22], registers[23], registers[24], registers[25], registers[26], registers[27], registers[28], registers[29], registers[30], registers[31]) begin: REG_FILE_READ
    if ((reset == 1)) begin
        if (ra) begin
            rda = registers[ra];
        end
        if (rb) begin
            rdb = registers[rb];
        end
    end
end


always @(posedge clk) begin: REG_FILE_WRITE
    if ((reset == 1)) begin
        if (reg_wr) begin
            if (wa) begin
                registers[wa] <= wda;
            end
        end
    end
end

endmodule
