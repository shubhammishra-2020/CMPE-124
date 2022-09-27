`timescale 1ns/1ns
`include "test.v"

module and_tb();
  reg a,b,s;
  wire y;
  mux mux_tb(a,b,y,s);
  
  initial 
  
    begin

    $dumpfile("test_tb.vcd");
    $dumpvars(0, and_tb);
    
    a=0; b=0; s=0;
    #20
    a=0; b=1; s=0; 
    #20
    a=1; b=0; s=0;
    #20
    a=1; b=1; s=0;
    #20
    a=0; b=0; s=1;
    #20
    a=0; b=1; s=1;
    #20
    a=1; b=0; s=1;
    #20
    a=1; b=1; s=1;
    
    $display("Test Complete");
  end   

endmodule
