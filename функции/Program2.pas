const
  MaxArraySize=10;
type
  TArray = array [1..MaxArraySize] of integer;
var
  a:Tarray;
  n:byte;
  i:integer;
function fnSum(a:Tarray; n:byte):integer;
var
  i:byte;
  s:integer;
begin
  s:=0;
  for i:=1 to n do
  begin
    s:=s+a[i];
  end; 
  fnSum:=s;
end;  
function fnAvg(a:Tarray; n:byte):real;
begin
  fnAvg:=fnSum(a,n)/n;
end;
function fnIndMin(a:Tarray; n:byte):integer;
var
  i:byte;
  ind:integer;
begin
  ind:=1;
  for i:=1 to n do  
  begin
   if a[i]<a[ind] then
   ind:=i;
  end;
  fnIndMin:=ind;
end;
function fnIndMax(a:Tarray; n:byte):integer;
var
  i:byte;
  ind:integer;
begin
  ind:=1;
  for i:=1 to n do  
  begin
   if a[i]>a[ind] then
   ind:=i;
  end;
  fnIndMax:=ind;
  end;
function fnCmena1(a:Tarray; n:byte):integer;
var
  i:byte;
  ind,ind1:integer;
begin
  ind:=1;
  ind1:=1;  
  for i:=1 to n do  
  begin
   if a[i]<a[ind] then
    ind:=i;
   if a[i]>a[ind1] then
    ind1:=i;
  end;
  ind:=ind1;
  fnCmena1:=ind;
end;
function fnCmena2(a:Tarray; n:byte):integer;
var
  i:byte;
  ind,ind1:integer;
begin
  ind:=1;
  ind1:=1;  
  for i:=1 to n do  
  begin
   if a[i]<a[ind] then
    ind:=i;
   if a[i]>a[ind1] then
    ind1:=i;
  end;
  ind1:=ind;
  fnCmena2:=ind1;
end;
begin
  n:=MaxArraySize;
  randomize(10);
  for i:=1 to n do
    a[i]:=random(10);
  for i:=1 to n do
    write(a[i]:4);
  writeln;
  writeln(fnSum(a,n));
  writeln(fnAvg(a,n));
  writeln(fnIndMin(a,n));
  writeln(fnIndMax(a,n));
  writeln(fnCmena1(a,n));  
  writeln(fnCmena2(a,n)); 
end.  