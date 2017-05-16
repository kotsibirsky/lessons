procedure F(n:integer);
begin
  writeln(N, ' *');
  if n>5 then 
  begin
    F(n-1);
    F(n-3);
    writeln(N, ' *');
  end
  else if n>3 then
  begin
    F(n div 2);
    writeln(N, ' *');
  end;
end;
begin
  F(8); 
end.
  