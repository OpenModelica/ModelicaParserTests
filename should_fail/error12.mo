// name: error12.mo  
// keywords:This tests the error handler "generic error"  where the class is not ended 
// status: incorrect

class error_test 
int x,y,z,w; 
algorithm
while x <> 99 loop  
  x := (x+111) - (y/3); 
   if x == 10 then
    y := 234;
 end if;
end while;
end;


//[../omcc_test/error12.mo:14:4-14:5:writable] Error: 'end;'
// unsuccessfull
