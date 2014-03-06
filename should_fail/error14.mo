// name: error14.mo  
// keywords:This tests the error model where the conditional statement if is not declared and hints the message to developers 
// status: incorrect

class error_test 
int x,y,z,w; 
float x,z;
algorithm
while x <> 99 loop  
  x := (x+111) - (y/3); 
  if x == 10 loop
    y := 234;
 end if;
end while;
end error_test;


//[../omcc_test/error14.mo:11:14-11:18:writable] Error: 'if x == 10 loop', REPLACE token with 'THEN'
// unsuccessfull
// omcc- v.2014