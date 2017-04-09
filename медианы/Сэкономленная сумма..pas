const
  MaxArraySize=10;
type
  TArray = array [1..MaxArraySize] of integer;
var
  a:TArray;
  n: word;
  
  sum,x: integer;
  i,j,k: word;
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
  for i:=1 to N div 2 do
  begin
    write(a[i]:4);
    write(a[N-i+1]:4);
  end;
  sum:=0;
  for i:=1 to N div 2 do
  begin
    sum:=sum+a[n-i+1]; 
  end;
  writeln;
  write('Сэкономленная сумма = ', sum);
end.  