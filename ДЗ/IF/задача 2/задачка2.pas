var
  a,b: integer;
begin
  writeln('������� �����',a,b);
  readln(a,b);
  if a>b then writeln('� ������') else
  if a<b then writeln('b ������') else
  if a=b then writeln('����� �����');
end.