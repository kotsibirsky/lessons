const
  MaxN=10;
  MaxM=10;
type
  Tarray= array [1..MaxM] of integer;
  TMatrix= array [1..MaxN] of Tarray;
function fMatrAVG(Q: Tarray; ColCount: word): real;
var
  sum,avg:integer;
  j:integer;
begin
  sum:=0;
  for j:=1 to ColCount do
  begin
    sum:=sum+Q[j];
  end;
  fMatrAVG:=sum/ColCount;;
end; 
function fMatrMin(Q: Tarray; ColCount: word): integer;
var
  min,j:integer;
begin
  min:=Q[1];
  for j:=1 to ColCount do
  begin
    if Q[j]<min then
    min:=Q[j];
  end;
  fMatrMin:=min; 
end;
function fMatrMax(Q: Tarray; ColCount: word): integer;
var
  max,j:integer;
begin
  max:=Q[1];
  for j:=1 to ColCount do
  begin
    if Q[j]>max then
    max:=Q[j];
  end;
  fMatrMax:=max; 
end;   
var
  Matr:TMatrix;
  i,j,N,M:integer;  
begin
  readln(N);
  readln(M);
  for i:=1 to N do
  begin
    for j:=1 to M do
    begin
      readln(Matr[i,j]);
    end;
  end;
  for i:=1 to N do
  begin
    for j:=1 to M do
    begin
    end;  
    write(fMatrMin(Matr[i],M):7);
    write(fMatrMax(Matr[i],M):7);
    write(fMatrAVG(Matr[i],M):7);  
    writeln();
  end;  
end.  