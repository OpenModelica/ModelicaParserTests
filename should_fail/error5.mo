// name: error5.mo  
// keywords:This tests the error handler "Erase" when two tokens are repeated and hints the users with possible replacement   
// status: incorrect

class error_test 
int x,y,z,w; 
algorithm
while x <> 99 loop  
  x := (x+111) - (y/3); 
   if x == 10 then then 
    y := 234;
  end if;
end while;
end error_test;

//[../omcc_test/error5.mo:10:20-10:24:writable] Error: 'if x == 10 then then' , REPLACE token with '+' or '-' or '.' or 'NOT', ERASE token 'then'
// unsuccessfull
