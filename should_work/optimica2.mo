// name:optimica2.mo 
// keywords:This tests the optimization grammar constructs, optimica debugger not added 
// status: correct

optimization StirredTank(
        objectiveIntegrand = 0.5*(x1^2 + x2^2 + 0.1*u^2),
  objective = (x1(finalTime))^2 + (x2(finalTime))^2,
        startTime=0, finalTime=0.78)
    /* Stirred-Tank Chemical Reactor - Kirk, D. E., Optimal control theory: An introduction, Prentice-Hall, 1970. */
    
    Real x1(start=0.05, fixed=true);
    Real x2(start=0, fixed=true);

    input Real u(start = 1);
    
    Real a1;
    Real a2;
    Real a3;
    Real a4;
  equation
    der(x1) = -2*a1 + a4 - a1*u;
    der(x2) = 0.5 - x2 - a4;

    a1 = x1 + 0.25;
    a2 = x2 + 0.5;
    a3 = x1 + 2;
    a4 = a2*exp(25*x1/a3);

  end StirredTank;
  
  //succeed
  //OMCCp -2013
