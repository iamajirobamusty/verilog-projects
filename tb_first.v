`timescale 1ns/1ps

module tb_first;
	reg switch; // input to the module
	wire led; // output from the module

	//instantiate your module
	first uut (
		.switch(switch),
		.led(led)
	);

	initial begin
		//create VCD file for waveform
		$dumpfile("led.vcd");
		$dumpvars(0, tb_first);

		//Test sequemce
		switch = 0; #10 //led off
		switch = 1; #10 //led on
		switch = 0; #10 //led off
		switch = 1; #10 //led on
		$stop;

	end

	initial begin
		$monitor("Time=%t | switch=%b | led=%b", $time, switch, led);
	end
endmodule
