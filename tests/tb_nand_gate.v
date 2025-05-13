`timescale 1ns/1ps

module nand_gate_tb;

  parameter WIDTH = 4;

  reg  [WIDTH-1:0] a;
  reg  [WIDTH-1:0] b;
  wire [WIDTH-1:0] y;

  // Instanciation du module nand_gate
  nand_gate #(WIDTH) uut (
    .a(a),
    .b(b),
    .y(y)
  );

  initial begin
    $dumpfile("waveform.vcd");
    $dumpvars(0, nand_gate_tb);

    // Cas de test
    a = 4'b0000; b = 4'b0000; #10;
    a = 4'b1100; b = 4'b1010; #10;
    a = 4'b1111; b = 4'b1111; #10;
    a = 4'b0101; b = 4'b1010; #10;

    $finish;
  end

  initial begin
    $monitor("Time = %0t | a = %b | b = %b | y = %b", $time, a, b, y);
  end

endmodule
