const
  MaxArraySize=10;
type
  TArray = array [1..MaxArraySize] of integer;
var
  a:TArray;
  n: word;
  sum,x: integer;
  med,i,j,k: word;
begin
  n:=MaxArraySize;
  randomize(20);
  for i:=1 to n do
    a[i]:=random(50);
  for i:=1 to n do
    write(a[i]:4);
  writeln;
  for i:=1 to N-1 do
  begin
    k:=i;
    x:=a[i];
    for j:=i+1 to N do
    begin
      if a[j]<x then
      begin
        k:=j;
        x:=a[k];
      end;
    end;
    a[k]:=a[i];
    a[i]:=x;
  end;
  for i:=1 to n do
    write(a[i]:4);
  writeln;
  sum:=0;
  for i:=1 to N div 2 do
  begin
    if a[i]<a[N div 2] then
      sum:=sum+a[i];
  end;  
  writeln('����� �����, ������� ������� = ', sum)
end.