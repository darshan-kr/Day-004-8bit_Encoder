module encoder(
  input [7:0]in,
  input enable,
  output reg [2:0]y=0);
  always@(*)
    begin
      if(enable == 1'b0)
        y = 3'd0;
      else
        begin
          case(in)
            1:y = 3'd0;
            2:y = 3'd1;
            4:y = 3'd2;
            8:y = 3'd3;
            16:y = 3'd4;
            32:y = 3'd5;
            64:y = 3'd6;
            128:y = 3'd7;
          endcase
        end
    end
endmodule
