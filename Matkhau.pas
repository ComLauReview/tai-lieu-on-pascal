program PasswordGenerator;

var
  str, output: string; // khai báo biến lưu xâu đầu vào và kết quả
  count: integer; // khai báo biến đếm số lượng kí tự liên tiếp
  i: integer; // biến lặp

begin
  // Nhập xâu
  write('Nhap xau: ');
  readln(str);
  
  // Khởi tạo kết quả ban đầu
  output := '';
  
  // Duyệt qua từng kí tự của xâu đầu vào
  i := 1;
  while i <= length(str) do
  begin
    // Đếm số lượng kí tự liên tiếp là a
    count := 0;
    while (i + count <= length(str)) and (str[i+count] = 'a') do
      inc(count);
    
    // Thêm số lượng kí tự liên tiếp vào kết quả
    if count > 0 then
      output := output + IntToStr(count) + 'a';
    
    // Thêm kí tự khác a vào kết quả
    if (count = 0) or (i + count > length(str)) or (str[i+count] <> 'a') then
      output := output + str[i];
    
    // Tăng biến lặp lên số lượng kí tự vừa được đếm
    i := i + count + 1;
  end;
  
  // Xuất kết quả
  writeln('Ket qua: ', output);
  
  readln; // Dừng chương trình để xem kết quả
end.
