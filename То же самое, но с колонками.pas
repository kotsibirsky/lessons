const
  MaxN=10;
  MaxM=10;
type
  Tarray = array [1..MaxM] of real;
  TMatrix = array [1..MaxN] of Tarray;
function fMatrSum(Q: Tarray; ColCount: word): real;
var
  sum:real;
  i:integer;
begin
  sum:=0;
  for i:=1 to ColCount do
  begin
    sum:=sum+Q[i];
  end;
  fMatrSum:=sum;
end;
function fMatrProis(Q: Tarray; ColCount: word): real;
var
  prois:real;
  i:integer;
begin
  prois:=1;
  for i:=1 to ColCount do
  begin
  
    prois:=prois*Q[j,i];
  end;
  fMatrProis:=prois;
end;
var
  Matr:Tmatrix;
  i,j,N,M:integer;
begin
  readln(N);
  readln(M);
  for i:=1 to N do
  begin
    for j:=1 to M do
    begin
      readln(Matr[j,i]);
    end;
  end;
  for i:=1 to N do
  begin
    for j:=1 to M do
    begin
      write(Matr[i,j]:2);
    end;
      write(fMatrSum(Matr[i],M):2);
      write(fMatrProis(Matr[i],M):2);    
    writeln();
  end;
  for j:=1 to M do
  begin
    if fMatrSum(Matr[i],N)>fMatrProis(Matr[i],N) then
    begin
      for i:=N downto 1 do
        write(Matr[i,j]:2);
    end
    else
    begin
      for i:=1 to N do
        write(Matr[i,j]:2);
    end;
    writeln;
  end;
end.  
  