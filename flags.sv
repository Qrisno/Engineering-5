module flags(
	input makeNew,
	input [3:0] actual,
	output reg [3:0] crct
);

initial crct = 0;

always @(posedge makeNew) begin
	crct = actual;
end

endmodule
