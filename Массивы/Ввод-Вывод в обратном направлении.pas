var
  a:array[1..10]
    of integer;
  i,N:integer;
begin
  write('������� ���������� ��������� �������: ');
  readln(N);
  for i:=1 to N do
  begin
    write('��� ������� #',i,': ');
    readln(a[i]);
  end;
  for i:=N downto 1 do
  begin
    write(a[i],' ');
  end;
  writeln;
end.