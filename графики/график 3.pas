function fline(x,y:real):integer;
var
  r:integer;
begin
  if -x>y then
    r:=-1;
  if -x=y then
    r:=0;
  if -x<y then
    r:=1;
  fline:=r;  
end; 
function fparabola(x,y:real):integer;
var
  r:integer;
begin
  if x*x<y then
    r:=1;
  if x*x=y then
    r:=0;
  if x*x>y then
    r:=-1;
  fparabola:=r;
end;  
function fcircle(x,y:real):integer;
var
  r:integer;
begin
  if x*x+y*y<2*2 then
    r:=-1;
  if x*x+y*y=2*2 then
    r:=0;
  if x*x+y*y>2*2 then
    r:=1;
  fcircle:=r; 
end; 
var
  x,y:real;  
begin
  readln(x,y); 
 if (fline(x,y)=-1) and (fcircle(x,y)=-1) then
    writeln('Лежит в 1 области')
  else
    writeln('Не лежит в 1 области');
  if (fparabola(x,y)=1) and (fcircle(x,y)=-1) and (x>0) then
    writeln('Лежит в 2 области')
  else
    writeln('Не лежит в 2 области');
  if (fparabola(x,y)=-1) and (fcircle(x,y)=-1) and (fline(x,y)=1) and (x>0) then
    writeln('Лежит в 3 области')
  else
    writeln('Не лежит в 3 области');
  if (fparabola(x,y)=1) and (fcircle(x,y)=1) and (fline(x,y)=1) then
    writeln('Лежит в 4 области')
  else
    writeln('Не лежит в 4 области');    
end.