module clk_div (input logic clk, input logic rst, input logic speed, output logic clk_en);

   logic [23:0] clk_count;
   //logic [4:0] speed;
   //logic [23:0] increment;

   //assign increment = 1 << (speed*2)-1;
   assign clk_en = clk_count[23];

   always_ff @(posedge clk) begin
      if (rst)
	clk_count <= 24'h0;
      else
	//clk_count <= clk_count + increment;
   clk_count <= clk_count + 1;
   end
endmodule // clk_div
