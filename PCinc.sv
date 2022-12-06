module PCinc(
	input [31:0] prev_address,
	output [31:0] curr_address
);

assign  prev_address = curr_address + 4;

endmodule