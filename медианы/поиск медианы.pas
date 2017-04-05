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
  med:=a[i];
  for i:=1 to N do 
  begin
    if a[5]<med then
    med:=a[5];
  end;
  writeln('Медиана ряда чисел = ',med);
  for i:=1 to N do
  begin
    sum:=0;
    if med<a[i] then  
    begin
      sum:=sum+a[i];
    end;
  end;  
  writeln('Сумма чисел, меньших медианы = ', sum)
end.