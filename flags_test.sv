module flags_test();

logic clk;
logic gen_new_fl;
logic [3:0] curFl, lsdFla;

flags flags_tst(gen_new_fl, curFl, lsdFla);

always begin 
 #1 clk = ~clk;
end

initial begin
	clk = 0;
	gen_new_fl = 0;
	curFl = 4'b1001;
	
	#4 gen_new_fl = 1;
	#5 curFl = 4'b0110;
	#4 gen_new_fl = 0;
	#10 curFl = 4'b1100;
	#4  gen_new_fl = 1;
	
end

endmodule