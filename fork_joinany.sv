//SV Topics : Thread
//Problem statement : to use fork join_any block
//======================================

module test;
  initial begin	
    fork
    	begin
          #5;
          $display($time, " inside fork join at 5\n");
    	end
    
    	begin
          #2;
          $display($time, " inside fork join 2\n");	//this thread will end first
    	end
  	join_any
    $display($time, " this starts at 2\n");	//executes after end of any of the threads
  end
endmodule

