// name: error10.mo  
// keywords:This tests the error model where the statements while statement is not ended properly   
// status: incorrect

class error_test 
int x,y,z,w; 
algorithm
while x <> 99 loop  
  x := (x+111) - (y/3); 
   if x == 10 then
    y := 234;
 end while;
end while;
end error_test;

//[../omcc_test/error10.mo:12:2-12:11:writable] Error: 'end while;', REPLACE token with 'ENDIF'
// unsuccessfull
