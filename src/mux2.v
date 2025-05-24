module mux2 #(
    parameter WIDTH = 8
) (
    input wire [WIDTH-1:0] in_1,
    input wire [WIDTH-1:0] in_2,
    input wire sel,
    output wire [WIDTH-1:0] out
);
    assign out = sel ? in_1 : in_2;
endmodule