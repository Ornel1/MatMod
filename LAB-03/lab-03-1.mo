model Project
  parameter  Real a(start=0.12);
  parameter  Real b(start=0.74);
  parameter  Real c(start=0.49);
  parameter  Real h(start=0.53); 
  Real y1(start=36010);
  Real y2(start=4100);
  
  equation
    der(y1)= -a*y1-b*y2 + sin(time+1)+2;
    der(y2)= -c*y1-h*y2 + cos(time+2)+2;

  
  annotation(experiment(StartTime=0, StopTime=1, Tplerance=1e-06,Interval=0.05));

end Project;



model Project
  parameter  Real a(start=0.47);
  parameter  Real b(start=0.654);
  parameter  Real c(start=0.456);
  parameter  Real h(start=0.39); 
  Real y1(start=36010);
  Real y2(start=4100);
  
  equation
    der(y1)= -a*y1-b*y2 + 1.5*abs(sin(2*time));
    der(y2)= -c*y1*y2-h*y2 + 2*abs(cos(time));

  
  annotation(experiment(StartTime=0, StopTime=1, Tplerance=1e-06,Interval=0.05));

end Project;