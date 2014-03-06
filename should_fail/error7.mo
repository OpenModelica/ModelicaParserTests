// name: error7.mo  
// keywords:This tests the error handler "Generic error which does not comes under insert,erase,merge"  here conditional if statement is not ended and it displays the following message   
// status: incorrect

class error_test 
int x,y,z,w; 
algorithm
while x <> 99 loop  
  x := (x+111) - (y/3); 
   if x == 10 then
    y := 234;
end while;
end error_test;

// [../omcc_test/error7.mo:12:1-12:10:writable] Error: 'end while;'
// unsuccessfull
