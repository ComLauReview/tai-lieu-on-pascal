program matthu;
uses crt;
var a:array[1..1000]of integer; i,k:longint;
var h,b,c,d,e:longint;
function ucln(h,b:longint):longint;
var r:longint;
begin
   r:=h mod b;
   while r<>0 do
   begin
    h:=b;
    b:=r;
    r:=h mod b;
   end;
    ucln:=b;
end;
function bcnn(h,b:longint):longint;
begin
bcnn:=h*(b div ucln(h,b));
end;
begin
clrscr;
writeln('Nhap so luong nguoi tham gia: ');      readln(k);
for i:=1 to k do
begin
readln(a[i]);
writeln('BCNN la:', bcnn(h,b));
end;

readln
end.
