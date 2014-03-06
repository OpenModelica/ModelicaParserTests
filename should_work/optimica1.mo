// name:optimica1.mo 
// keywords:This tests the optimization grammar constructs, optimica debugger not added 
// status: correct
  
  
  optimization BatchReactor(
  objective = -x2(finalTime),
        startTime=0, finalTime=1)

    Real x1(start=1, fixed=true);
    Real x2(start=0, fixed=true);

    input Real u(min=0, max = 5);
  
  equation
    der(x1) = -(u +u^2/2)*x1;
    der(x2) = u*x1;
  end BatchReactor;
  
  //succeed
  //OMCCp-2013