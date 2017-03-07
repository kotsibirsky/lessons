var
  a,b: integer;
begin
  writeln('¬ведите числа',a,b);
  readln(a,b);
  if a>b then writeln('a больше');
  if a<b then writeln('b больше');
  if a=b then writeln('числа равны');
end.