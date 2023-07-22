module tb;
  reg [7:0]in;
  reg enable;
  wire [2:0]y;
  
  encoder e1(.in(in), .enable(enable), .y(y));
  
  initial begin
    $monitor("in=%b, enable=%b, y=%b", in, enable, y);
    $dumpfile("dump.vcd"); $dumpvars;
    in=8'd1; enable = 1'b1;
    #10;
     in=8'd2; enable = 1'b1;
    #10;
     in=8'd128; enable = 1'b1;
    #10;
     in=8'd16; enable = 1'b1;
    #10;
     in=8'd8; enable = 1'b1;
    #10;
    /*repeat(10) begin
      in = $random;
      enable = $random;
      #2;*/
    //end
  end
endmodule
