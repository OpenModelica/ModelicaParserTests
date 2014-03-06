// name: error15.mo  
// keywords:This tests the erroneous MetaModelica function where the match statement is not ended properly
// status: incorrect

function add
  input Integer ininteger;
  input Integer ininteger1;
  output Integer outinteger;
  algorithm
    outinteger:= match(ininteger,ininteger1)
       local
        Integer a,b,c;
       case(a,b)
        equation
          c=a+b;
          then
            c;
   end matchcontinue;
 end add;

//[../omcc_test/error15.mo:18:4-18:21:writable] Error: 'end matchcontinue;', REPLACE token with 'ENDMATCH'
// unsuccessfull
// omcc- v.2014