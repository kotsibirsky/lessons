var i,j,n,k,p: longint;
    s: real;
begin
  s:=0;
  writeln('Введите числа n,k');
  readln(n,k);
  for i:=1 to n do
  begin
    // Вот что я имел в виду под вычислением степени
    p:=1;
    for j:=1 to k do
      p:=p*i;
    s:=s+p;
  end;
  writeln('Сумма ряда = ',s);
end.
