module testbench_or_gate;

	wire Y;
	reg A, B;
	
	or_gate6 OR6(A,B,Y);

	
	initial
	begin
		A = 1'b0; B = 1'b0;
		#10 A = 1'b0; B = 1'b1;
		#10 A = 1'b1; B = 1'b0;
		#10 A = 1'b1; B = 1'b1;
		
		#100 $finish;
	end
	
endmodule