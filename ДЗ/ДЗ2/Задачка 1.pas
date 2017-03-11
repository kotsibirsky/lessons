var
  j,s,i,p,N: integer;
begin
  writeln('¬ведите число');
  readln(N);
  s:=0;
  for i:=1 to N do
  begin
    p:=1;
    for j:=1 to i do
    begin
      p:=p*(-1);
    end;
    s:=s+p*i;
  end;
  writeln('—умма чисел = ',s);
end.