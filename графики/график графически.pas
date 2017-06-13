program graphic;
uses graphABC;
var
  i: integer;
  x, y1, y2: real;
begin
  line(0,240,620,240);
  line(300,0,300,900);
  for i:=-150 to 150 do
  begin
    x:=0.03*i;
    y1:=x*x*(-1);
    y2:=x;
    setpixel(round(300+20*x), round(240-20*y1),clred);
    setpixel(round(300+20*x), round(240-20*y2),clblue);
    textout(10,10,'y1=x*x*(-1), y2=x');
  end;
end.  