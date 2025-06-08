class DInputStimulus;
  task stimulus(ref logic d);
    begin
      d = 0;
      #10 d = $urandom_range(0, 1);
      #20 d = $urandom_range(0, 1);
      #30 d = $urandom_range(0, 1);
      #40 $finish;
    end
  endtask
endclass
