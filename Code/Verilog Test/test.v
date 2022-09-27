module mux(a,b,y,s);
  input a,b,s;
  wire c,d,e;
  output y;
  
  not(c,s);
  and(d,c,b);
  and(e,a,s);
  or(y,d,e);
  
  
endmodule