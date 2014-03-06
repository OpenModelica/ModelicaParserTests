// name: error3.mo  
// keywords:This tests the error handler "insert" when loop statements are not defined with keyword "loop" and hints the user with possible token to insert   
// status: incorrect

class error_test 
int x,y,z,w; 
algorithm
while x <> 99  
  x := (x+111) - (y/3); 
   if x == 10 then 
    y := 234;
  end if;
end while;
end error_test;

//[../omcc_test/error3.mo:9:3-9:4:writable] Error: 'while x <> 99', INSERT token 'LOOP'
// unsuccessfull





