// name: error8.mo  
// keywords:This tests the error model where the statements defined inside the algorithm section must be assigned with y :=234 and not y = 234     
// status: incorrect

class error_test 
int x,y,z,w; 
algorithm
while x <> 99 loop  
  x := (x+111) - (y/3); 
   if x == 10 then
    y = 234;
 end if;
end while;
end error_test;

//[../omcc_test/error8.mo:11:7-11:8:writable] Error: 'y = 234;', REPLACE token with 'ASSIGN'
// unsuccessfull
