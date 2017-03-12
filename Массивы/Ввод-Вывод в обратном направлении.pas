var
  a:array[1..10]
    of integer;
  i,N:integer;
begin
  write('Введите количество элементов массива: ');
  readln(N);
  for i:=1 to N do
  begin
    write('Все элемент #',i,': ');
    readln(a[i]);
  end;
  for i:=N downto 1 do
  begin
    write(a[i],' ');
  end;
  writeln;
end.