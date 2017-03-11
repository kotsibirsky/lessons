var
  s,i,p,N:integer;
begin
  writeln('¬ведите число');
  readln(N);
  s:=0;
  p:=1;
  for i:=1 to N do
  begin
    if i mod 2 = 0 then
      p:=1
    else 
      p:=-1;
    s:=s+p*i;
  end;
  writeln('—умма чисел = ', s);
end.