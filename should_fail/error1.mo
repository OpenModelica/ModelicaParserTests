// name: error1.mo  
// keywords:This tests the error handler "insert" when variables are not ended with semicolon  
// status: incorrect

class error_test1 
int x,y
algorithm
while x <> 99 loop  
  x := (x+111) - (y/3); 
   if x == 10 then 
    y := 234;
  end if;
end while;
end error_test1;

// [../omcc_test/error1.mo:7:1-7:10:writable] Error: 'int x,y', 'algorithm', INSERT token 'SEMICOLON'
// unsuccessfull










  