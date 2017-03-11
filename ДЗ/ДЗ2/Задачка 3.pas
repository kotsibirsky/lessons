var
  s,i,p,N:integer;
begin
  writeln('¬ведите число');
  readln(N);
  s:=0;
  p:=-1;
  for i:=1 to N do
  begin
    s:=s+p*i;
    p:=p*(-1);
  end;
  writeln('—умма чисел = ', s);
end.  