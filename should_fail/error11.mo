// name: error11.mo  
// keywords:This tests the error model where the statements while statement is not ended properly   
// status: incorrect

class error_test 
int x,y,z,w; 
algorithm
while x <> 99 loop  
  x := (x+111) - (y/3); 
   if x == 10 
    y := 234;
 end if;
 end while;
end error_test;

//[../omcc_test/error11.mo:11:5-11:6:writable] Error: 'if x == 10', INSERT token 'THEN'
// unsuccessfull
