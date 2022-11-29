begin
  var k, n, min, a: integer;
  var mx: array of integer;
  read(n);
  SetLength(mx, n);
  for var i := 0 to n - 1 do
  begin
    read(a);
    mx[k] := a;
    inc(k);
  end;
  k := 0;
  min := mx[1];
  for var i := 0 to n - 1 do
    if mx[i] < min then
      min := mx[i];
  for var i := 0 to n - 1 do
    if mx[i] = min then
      inc(k);
  writeln('Кол-во мин элемента: ', k);
  writeln('min элем: ', min);
end.