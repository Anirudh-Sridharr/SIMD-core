module SIMDalu(
    input wire [2:0] aluctrl, 
    input wire [7:0] a,
    input wire [7:0] b,
    output reg [7:0] c
)
    always @(*) begin
        case(aluctrl)
            3'b000: c = a + b;
            3'b001: c = a - b;
            3'b010: c = a * b;
            3'b011: c = a | b;
            3'b100: c = a & b;
            3'b101: c = a ^ b;
            3'b110: c = a << b;
            3'b111: c = a >> b;
            default: c = 0;
        endcase
    end
//simple MAC alu 

endmodule