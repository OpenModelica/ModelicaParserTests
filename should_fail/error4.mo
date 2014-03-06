// name: error4.mo  
// keywords:This tests the error handler "merge" when some extra spaces are identified between two tokens and hints the user with possible token to merge   
// status: incorrect

class error_test 
int x,y,z,w; 
algorithm
while x <> 99 loop  
  x := (x+111) - (y/3); 
   if x = = 10 then  
    y := 234;
  end if;
end while;
end error_test;

//[../omcc_test/error4.mo:10:9-10:10:writable] Error: 'if x = = 10 then', '=', MERGE tokens '=' and '='
// unsuccessfull
