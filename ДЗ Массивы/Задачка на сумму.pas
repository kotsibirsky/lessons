var
  a:array[1..10]
    of integer;
  ca,k,s,i,N:integer;
begin
  k:=0;
  s:=0;
  write('������� ���������� ��������� �������: ');
  readln(N);
  for i:=1 to N do
  begin
    write('��� ������� #',i,': ');
    readln(a[i]);
    s:=s+a[i];
  end;
  writeln('����� ��������� ������� = ',s);
  ca:=s div N;
  writeln('������� �������������� ����� = ',ca);
end.