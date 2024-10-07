program questaoTres;
var 
  i, j, d, s:integer;

begin
  j:=1;
  s:=0;
  for i:=1 to 10 do
  begin
    d:=0;
    j:=1;
    while j<=i do
      if (i mod j)=0 then
        d+=1;
    if d=2 then
      s+=i;
    
  end;
  writeln('s: ',s);
end.
    
