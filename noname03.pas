Program tinh_TB;
Uses Crt;
Var n,dem: integer;
 x, S, TB: real;
BEGIN
 ClrScr;
 Write(‘Muon tinh TB bao nhieu so n=’); Readln(n);
 dem:= 0; S:=0;
 While dem <= n do
 Begin
 Write(‘Nhap so thu’, dem, ‘ = ‘ );readln(x);
 S:= S + x; dem:= dem + 1;
 End;
 TB:= S/n;
 Write(‘ Vay trung binh cong ’, n, ‘so la: ‘, TB:6:2);
 Readln;
END.
