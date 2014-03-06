// name: error13.mo  
// keywords:This tests the error model where semicolon is missed 
// status: incorrect

class error_test 
int x,y,z,w; 
float a,b
algorithm
while x <> 99 loop  
  x := (x+111) - (y/3); 
   if x == 10 then
    y := 234;
 end if;
end while;
end error_test;


// [../omcc_test/error13.mo:8:1-8:10:writable] Error: 'float a,b', INSERT token 'SEMICOLON'
// unsuccessfull
// omcc- v.2013