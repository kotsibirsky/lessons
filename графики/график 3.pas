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
    writeln('����� � 1 �������')
  else
    writeln('�� ����� � 1 �������');
  if (fparabola(x,y)=1) and (fcircle(x,y)=-1) and (x>0) then
    writeln('����� � 2 �������')
  else
    writeln('�� ����� � 2 �������');
  if (fparabola(x,y)=-1) and (fcircle(x,y)=-1) and (fline(x,y)=1) and (x>0) then
    writeln('����� � 3 �������')
  else
    writeln('�� ����� � 3 �������');
  if (fparabola(x,y)=1) and (fcircle(x,y)=1) and (fline(x,y)=1) then
    writeln('����� � 4 �������')
  else
    writeln('�� ����� � 4 �������');    
end.