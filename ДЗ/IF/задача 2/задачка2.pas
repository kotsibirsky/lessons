var
  a,b: integer;
begin
  writeln('Введите числа a,b');
  readln(a,b);
  if a>b then writeln('a больше') else
  if a<b then writeln('b больше') else
  if a=b then writeln('числа равны');
end.
