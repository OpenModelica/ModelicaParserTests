// name:partest2.mo 
// keywords:This tests the parModelica grammar constructs parkernel function
// status: correct


parkernel function mmkernel
input Integer m;
input Integer pA[m,m];
input Integer pB[m,m];
output Integer pC[m,m];
Integer id;
Integer nr_threads;
Integer ptemp;
 algorithm
//get the global thred id
   id := ocl_get_global_id(0);
   //get the global number of threads
  nr_threads := ocl_get_global_size(0);
for i in id:nr_threads:m loop
for j in 1:m loop
ptemp := 0;
for h in 1:m loop
ptemp := multiply(pA[i,h] , pB[h,j]) + ptemp;
end for;
pC[i,j] := ptemp;
end for;
end for;
end mmkernel;
