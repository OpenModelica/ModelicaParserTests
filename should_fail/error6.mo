// name: error6.mo  
// keywords:This tests the error handler Replace 
// status: incorrect

class error_test 
int x,y,z,w; 
algorithm
while x <> 99 loop  
  x := (x+111) - (y/3); 
   if x == 10; 
    y := 234;
end if;
end while;
end


//[../omcc_test/error6.mo:10:14-10:15:writable] Error: 'if x == 10;' , REPLACE token with 'THEN'
// unsuccessfull
