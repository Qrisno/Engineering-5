module inst_mem_test();

logic clk;
logic [5:0] dreess;
logic [31:0] truqw;

inst_mem inst_mem_tst(dreess, truqw);

always begin 
 #1 clk = ~clk;
end

initial begin
	clk = 0;
	dreess = 6'b000000;
	#10 dreess = 6'b000001;
	#10 dreess = 6'b111011;
	#10 dreess = 6'b111100;
	#10 dreess = 6'b111101;
	#10 dreess = 6'b111110;
	#10 dreess = 6'b111111;
	

end

endmodule