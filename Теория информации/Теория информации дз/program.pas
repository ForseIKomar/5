
function isRussian(S: string): boolean;
var
  i: integer;
  b: boolean;
begin
  b := true;
  for i := 1 to length(S) do begin
  
      if (S[i] >= 'А') and (S[i] <= 'Я') then
        S[i] := char(word(S[i]) - word('А') + word('а'));
        
      if not((S[i] >= 'а') and (S[i] <= 'я')) then
        b := false;
  end;
  isRussian := b;
end;

var
  f: text;
  i: integer;
  sum, wsum: integer;
  S: string;
  H, p: real;
  chars: array [1..10000] of integer;
  words: array [1..100000] of string;
begin
  assign(f, 'my.txt');
  reset(f);
  while not EOF(f) do begin
    readln(f, S);
    for i := 1 to length(S) do begin
      if (S[i] >= 'А') and (S[i] <= 'Я') then
        S[i] := char(word(S[i]) - word('А') + word('а'));
      chars[ord(S[i])] += 1;
      if (S[i] >= 'а') and (S[i] <= 'я') then
        sum += 1;
    end;
  end;
  
  for i := word('а') to word('я') do begin
    p := chars[i] / sum;
    writeln(i: 5, ': ', chr(i), ': ', chars[i], '  p = ', p: 4: 3);
    if (chars[i] > 0) then
      H -= (chars[i] / sum) * (ln(chars[i] / sum) / ln(2));
  end;
  
  writeln('H = ', H:4:3);
  
  close(f);
end.
// H = M(-log(pi))
// 1 - Частоты букв в тексте, средняя энтропия буквы
// 2 - Частоты появления слов, средняя энтропия слова
// Повторить график Леона Бриллюэна
// Сжать, применив кодирование К.Шеннона
// Найти или написать программу для исследования, выполненого Марковым А.А.