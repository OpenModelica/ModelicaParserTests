// name: error9.mo  
// keywords:This tests the error model where the statements defined inside the equation section must be assigned with y =234 and not y:= 234 or replace the equation with keyword with algorithm    
// status: incorrect

class error_test 
int x,y,z,w; 
equation
while x <> 99 loop  
  x = (x+111) - (y/3); 
   if x == 10 then
    y := 234;
 end if;
end while;
end error_test;

//[../omcc_test/error9.mo:8:1-8:6:writable] Error: 'equation', INSERT token 'ALGORITHM', REPLACE token with 'NOT' or 'IF' or 'EQUATION' or 'ALGORITHM'
// unsuccessfull
