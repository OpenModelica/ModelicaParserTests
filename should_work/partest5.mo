// name:partest5.mo 
// keywords:This tests the parModelica grammar constructs
// status: correct

parkernel function arrayElemWiseMultiply
parglobal input Integer m;
parglobal input Integer A[:];
parglobal input Integer B[:];
parglobal output Integer C[m];
Integer id;
parlocal Integer portionId;
algorithm
id := oclGetGlobalId(1);
if(oclGetLocalId(1) == 1) then
portionId := oclGetGroupId(1);
end if;
oclLocalBarrier();
C[id] := multiply(A[id],B[id], portionId);
end arrayElemWiseMultiply;

//succeed
//OMCCp-2013