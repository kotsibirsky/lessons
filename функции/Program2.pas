const
  MaxArraySize=10;
type
  TArray = array [1..MaxArraySize] of integer;
var
  a:Tarray;
  ca,s,i,n:byte;
function f1(ca:byte):byte;
begin
  f1:=s+a[i];
  ca:=s/n;
end;
begin
  s:=0;
  n:=MaxArraySize;
  randomize(10);
  for i:=1 to n do
    a[i]:=random(10);
  for i:=1 to n do
    write(a[i]:4);
  writeln;
writeln(f1(ca));
end.  