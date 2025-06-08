`include "ClockGen.sv"
`include "ResetGen.sv"
`include "DInputStimulus.sv"
module d_flip_flop_tb_top;
  logic d;
  logic clk;
  logic rst;
  logic q;
  d_flip_flop dut(
    .d(d),
    .clk(clk),
    .rst(rst),
    .q(q)
  );
  ClockGen clk_inst;
  ResetGen rst_inst;
  DInputStimulus stim_inst;
  initial begin
    clk_inst = new();
    rst_inst = new();
    stim_inst = new();
    fork
      clk_inst.clk_gen(clk);
      rst_inst.rst_gen(rst);
      stim_inst.stimulus(d);
    join
  end
  initial begin
    $dumpfile("dumpfile.vcd");
    $dumpvars(1);
  end
  initial begin
    $monitor("At time = %0t: clk = %0b rst = %0b d = %0b q = %0b", $time, clk, rst, d, q);
  end
  initial begin
    #100 $finish;
  end
endmodule
