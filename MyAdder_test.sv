module MyAdder_test();

logic clk;
logic [31:0] f, g, h;
logic out;

MyAdder MyAdder_tst(f, g,h, out);

always begin 
 #1 clk = ~clk;
end

initial begin
	clk = 0;
	f = 2593;
	g = 2940;
	
	#4 f = 32'hfffffffe;
	   g= 1;
	#4 g = 2;
	
end

endmodule