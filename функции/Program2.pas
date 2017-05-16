const
  MaxArraySize=10;
type
  TArray = array [1..MaxArraySize] of integer;
var
  a:Tarray;
  n:byte;
  z,ind1,ind2,i:integer;
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
  writeln('Массив');
  n:=MaxArraySize;
  randomize(10);
  for i:=1 to n do
    a[i]:=random(10);
  for i:=1 to n do
    write(a[i]:4);
  writeln;
  writeln('Индекс маленького числа ', fnIndMin(a,n));
  writeln('Индекс большого числа ', fnIndMax(a,n));
  ind1:=fnIndMin(a,n);
  ind2:=fnIndMax(a,n);
  z:=a[ind1];
  a[ind1]:=a[ind2];
  a[ind2]:=z;
  for i:=1 to n do
    write(a[i]:4);
end.  