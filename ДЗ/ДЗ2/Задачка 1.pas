var
  j,s,i,p,N: integer;
begin
  writeln('������� �����');
  readln(N);
  s:=0;
  p:=1;
  for i:=1 to N do
  begin
  p:=p*(-1);
  s:=s+p*i;
  end;
  writeln('����� ����� = ',s);
end.