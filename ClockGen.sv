class ClockGen;
  task clk_gen(ref logic clk);
    begin
      clk = 1;
      forever #5 clk = ~clk;
    end
  endtask
endclass
