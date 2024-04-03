module clk_div (input logic clk, input logic rst, output logic clk_en);

   logic [27:0] clk_count;
   //logic [4:0] speed;
   //logic [23:0] increment;

   //assign increment = 1 << (speed*2)-1;
   //if(clk_count[27] == 28'b0111011100110101100101000000)
    
   
   assign clk_en = clk_count[27];

   always_ff @(posedge clk) begin
      if (rst)
	clk_count <= 28'h0;
      else
   //clk_count <= clk_count + increment;
   clk_count <= clk_count + 1;
   end
endmodule // clk_div
