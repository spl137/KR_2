var
i,c:integer;
a,n,s:array [1..10] of integer;
begin
c:=1;
for i:=1 to 10 do begin
readln(a[i]);
if a[i] not in n then begin
n[c]:=a[i];
c:=c+1;
end;
end;
for i:=1 to 10 do begin
for c:=1 to 10 do begin
if a[i]= n[c] then
s[c]:=s[c]+1;
end;
end;  
i:=1;
for c:=2 to 10 do begin
if (s[c] > s[c-1]) and (s[c]>0) then
i:=c;
if (s[c] < s[c-1]) and (s[c]>0) then
i:=c-1;
end;
writeln('Наиболее часто встречающийся элемент: ', n[i]);
end.