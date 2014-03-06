// name:partest4.mo 
// keywords:This tests the parModelica grammar constructs
// status: correct

function start
input Integer m;
output Integer p;
output Integer q;
Integer A[m,m];
Integer B[m,m];
Integer C[m,m];
Integer D[m,m];
parlocal Integer[m,m] pA;
parlocal Integer[m,m] pB;
parlocal Integer[m,m] pC;
parlocal Integer[m,m] pD;
parlocal Integer pm;
algorithm
//Initialize A and B
for i in 1:m loop
for j in 1:m loop
A[i,j] := 1;
B[i,j] := 2;
end for;
end for;
pA := A;
pB := B; 
pm := m;
pC := parMatrixMult(m, pA, pB);
//kernel function call is similar to normla function call
pD := mmkernel(pm,pA,pB);
C := pC;
D := pD;
p := C[m,m];
q := D[m,m];
end start;

//succeed
//OMCCP-2013