var
  s,i,p,N:integer;
begin
  writeln('������� �����');
  readln(N);
  s:=0;
  p:=-1;
  for i:=1 to N do
  begin
    s:=s+p*i;
    p:=p*(-1);
  end;
  writeln('����� ����� = ', s);
end.  