// name: error2.mo  
// keywords:This tests the error handler "insert or replace " when varibales,conditional statements, loops are not defined under an equation or algorithm section   
// status: incorrect

class error_test 
int x,y,z,w; 
while x <> 99 loop  
  x := (x+111) - (y/3); 
   if x == 10 then 
    y := 234;
  end if;
end while;
end error_test;

//[../omcc_test/error2.mo:7:1-7:6:writable] Error: 'int x,y,z,w;' , INSERT token 'ALGORITHM', REPLACE token with 'EQUATION' or 'ALGORITHM'
// unsuccessfull





