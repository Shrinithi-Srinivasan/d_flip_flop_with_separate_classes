class ResetGen;
  task rst_gen(ref logic rst);
    begin
      rst = 1;
      #10 rst = 0;
    end
  endtask
endclass
