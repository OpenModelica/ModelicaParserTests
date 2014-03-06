// name:partest1.mo 
// keywords:This tests the parModelica grammar constructs parallel function
// status: correct

parallel function multiply
input Integer a;
input Integer b;
output Integer c;
algorithm
c := a * b;
end multiply;

// succeed
// omcc- 2013
