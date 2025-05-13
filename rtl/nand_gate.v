//promaa 13/05/2025 - Porte nand simple à deux entrées

module nand_gate #(parameter WIDTH = 1) (
  input  wire [WIDTH-1:0] a,
  input  wire [WIDTH-1:0] b,
  output wire [WIDTH-1:0] y
);
  // Porte NAND : y = !(a & b)
  assign y = ~(a & b);
endmodule
