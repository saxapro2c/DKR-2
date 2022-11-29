var    i,n:integer;
begin
println('Введите строку содержащую несколько одинаковых подстрок');
var s:= readstring;
println('Введите подстроку для поиска и удаления');
var s1:= readstring;
s+=' ';
n:=0;
i:=1;
while i<=length(s) do
if s[i]=s1[1] then
 begin
  var j:integer;
  j:=1;
  while(j<=length(s1))and(s[i+j-1]=s1[j])do inc(j);
  if j>length(s1) then inc(n);
  if n mod 2=0 then
   begin
    for j:=1 to length(s1) do
     begin
      for var k:=i to length(s)-1 do
      s[k]:=s[k+1];     
     end;
   end
  else i:=i+1;
 end
else i:=i+1;
writeln(s)
end.