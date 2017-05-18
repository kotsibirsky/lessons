var
ways: integer;

procedure step(val: integer; is8: boolean; is20: boolean);
begin
  is8:=is8 or (val=12);
  is20:=is20 or (val=20);
  if (val<40) then
  begin
    step(val+1,is8,is20);
    step(val*2,is8,is20);
  end;
  if (is8=false)and(is20=true)and(val=40) then
    ways:=ways+1;
end;

begin
  ways:=0;
  step(2,false,false);
  writeln(ways);
end.