var
  a:array[1..10]
    of integer;
  ca,k,s,i,N:integer;
begin
  k:=0;
  s:=0;
  write('Введите количество элементов массива: ');
  readln(N);
  for i:=1 to N do
  begin
    write('Все элемент #',i,': ');
    readln(a[i]);
    s:=s+a[i];
  end;
  writeln('Сумма элементов массива = ',s);
  ca:=s div N;
  writeln('Среднее арифметическое чисел = ',ca);
end.