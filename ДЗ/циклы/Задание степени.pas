var i,n,k: longint;
    s: real;
begin
  s:=0;
  writeln('������� �����', n, k);
  readln(n,k);
  for i:=1 to n do
  begin
   s:=s+exp(ln(i)*k);
  end;
  writeln('����� �������� = ',s);
end.