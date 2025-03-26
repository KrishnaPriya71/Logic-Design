module tb;
  reg in,clk,reset;
  wire Q;
  
  ones	detecting(in,clk,reset,Q);
  
  always #5 clk=~clk;
  
  
  initial
    begin
      $monitor("Mon::time=%0d,in=%0d,Q=%0d",$time,in, Q);
      
      clk=0;
      reset=0;
      in=0;
      
      #5; reset=1;
      
      // display after every input to check values
      #5; in=0;
      $display("DISPLAY::time=%0t, in=%0d, Q=%0d", $time,in,Q);
      #5; in=0;
      $display("DISPLAY::time=%0t, in=%0d, Q=%0d", $time,in,Q);
      #5; in=1;
      $display("DISPLAY::time=%0t, in=%0d, Q=%0d", $time,in,Q);
      #5; in=0;
      $display("DISPLAY::time=%0t, in=%0d, Q=%0d", $time,in,Q);
      #5; in=1;
      $display("DISPLAY::time=%0t, in=%0d, Q=%0d", $time,in,Q);
      
      
      
      #70; $finish;
    end
  
  
  initial begin
    $dumpfile("wave.vcd");
    $dumpvars(0,tb);
  end
  
  
endmodule
      
