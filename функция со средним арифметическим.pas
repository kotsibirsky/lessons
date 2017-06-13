type
  Tarray=array [1..10] of integer;
function favg(a:Tarray; n:integer):real;
var
  avg,s:real;
  i:integer;
begin
  s:=0;
  for i:=1 to n do
  begin
    s:=s+a[i];
  end;
  avg:=s/n;
  favg:=avg;
end;

function fmin(a:Tarray; n:integer):real;
var
  min,i:integer;
begin
  min:=a[1];
  for i:=2 to n do
  begin
    if a[i]<min then
      min:=a[i];
  end;    
  fmin:=min;    
end;
function findmin(a:Tarray; n:integer):real;
var
  indmin,i:integer;
begin
  indmin:=1;
  for i:=2 to n do
  begin
    if a[i]<a[indmin] then
      indmin:=i;
  end;    
  findmin:=indmin;    
end;
  
var
  a:Tarray;
  i,n:integer;
begin
  n:=10;
  for i:=1 to n do
  begin
    writeln('¬ведите число');
    readln(a[i]);
  end;
  writeln(favg(a,n));
  writeln(fmin(a,n));
  writeln(findmax(a,n));  
end.  