function f1(const x,y: real): integer; // 1 - ���� ������� 0 - �� ������� -1 - ���� �������
var
r: integer;
begin
  if x=y then
    r:=0;
  if x>y then
    r:=-1;
  if x<y then
    r:=1;
  f1:=r;
end;

function f2(const x,y: real): integer; // 1 - ���� ������� 0 - �� ������� -1 - ���� �������
var
r: integer;
begin
  if x*x*(-1)=y then
    r:=0;
  if x*x*(-1)>y then
    r:=-1;
  if x*x*(-1)<y then
    r:=1;
  f2:=r;
end;

var
x,y:real;
begin
  writeln('������� ����� ');
  readln(x,y);
  if (f1(x,y)=-1)and(f2(x,y)=1) then
    writeln('����� � I')
  else
    writeln('�� ����� � I');
  if (f2(x,y)=-1) or (f1(x,y)=-1) and (x<0) or (f2(x,y)=0) and (x<0) then
    writeln('����� � II')
  else
    writeln('�� ����� � II');
  if (f1(x,y)=0) then
    writeln('����� � I �������')
  else
    writeln('�� ����� � I �������');
  if (f2(x,y)=0) then
    writeln('����� � II �������')
  else
    writeln('�� ����� � II �������');   
end.