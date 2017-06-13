const
  MaxN=2;
  MaxM=3;
type
  TCol = array [1..MaxN] of real;
  TMatrix = array [1..MaxM] of TCol;
function fMatrSum(Q: TCol; RowCount: word): real;
var
  sum:real;
  i:integer;
begin
  sum:=0;
  for i:=1 to RowCount do
  begin
    sum:=sum+Q[i];
  end;
  fMatrSum:=sum;
end;
function fMatrProis(Q: TCol; RowCount: word): real;
var
  prois:real;
  i:integer;
begin
  prois:=1;
  for i:=1 to RowCount do
  begin
    prois:=prois*Q[i];
  end;
  fMatrProis:=prois;
end;
var
  Matr:Tmatrix;
  i,j,N,M:integer;
begin
  N:=2;
  M:=3;
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
      write(Matr[j,i]:3);
    end;
    writeln();
  end;
  for j:=1 to M do
  begin
    write(fMatrSum(Matr[j],N):3);
  end;
    writeln();  
  for j:=1 to M do
  begin    
    write(fMatrProis(Matr[j],N):3);
  end;
  writeln();  
  for j:=1 to M do
  begin
    if fMatrSum(Matr[j],N)>fMatrProis(Matr[j],N) then
    begin
      for i:=N downto 1 do
        writeln(Matr[j,i]);       
    end
    else
      for i:=1 to N do
        write(Matr[j,i]);          
  end;
end.