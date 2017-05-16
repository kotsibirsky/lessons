function F(n:integer): integer; forward;
function G(n:integer): integer;
begin
  if n>2 then
    G:=G(n-1)+F(n-2)
  else
    G:=1
end;
function F(n:integer): integer;
begin
  if n>2 then
    F:=F(n-1)+G(n-2)
  else
    F:=1;
end;
begin
  writeln(F(7));
end.  
  
    