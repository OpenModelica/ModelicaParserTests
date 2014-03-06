// name:partest3.mo 
// keywords:This tests the Parmodelica constructs 
// status: correct



function parMatrixMult
  input Integer m;
  parlocal input Integer pA[m,m];
  parlocal input Integer pB[m,m];
  parglobal output Integer pC[m,m];
  //parallel counterparts of the variables
  parlocal Integer pm;
  Integer temp;
  parglobal Integer ptemp;
algorithm
  pm := m;
  parfor i in 1:m loop
  for j in 1:pm loop
  ptemp := 0;
    for h in 1:pm loop
    ptemp := multiply(pA[i,h],pB[h,j]) + ptemp;
    end for;
      pC[i,j] := ptemp;
  end for;
  end parfor;
end parMatrixMult;

//succeed
//OMCC - 2013