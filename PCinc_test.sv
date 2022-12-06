module PCinc_test();

logic clk;
logic [31:0] odd;
logic [31:0] nodd;
logic dsad;
logic [3:0] remN, rems, remR, remD;
logic [31:0] Rn, Rs, Rm, Rd, Rd_data, Ptou, PexnT;

PCinc PCinc_tst(clk, odd, nodd);
reg_file reg_file_tst(clk, dsad, remN, rems, remR, remD, Rn, Rs, Rm, Rd, Rd_data, odd, nodd);

always begin 
 #1 clk = ~clk;
end

initial begin
	clk = 0;
	

end

endmodule