var
  a,b: integer;
begin
  writeln('¬ведите числа',a,b);
  readln(a,b);
  if a>b then writeln('а больше') else
  if a<b then writeln('b больше') else
  if a=b then writeln('числа равны');
end.