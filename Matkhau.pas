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
    // Đếm số lượng kí tự liên tiếp
    count := 1;
    while (i + count <= length(str)) and (str[i+count] = str[i]) do
      inc(count);
    
    // Thêm số lượng kí tự liên tiếp vào kết quả
    output := output + IntToStr(count);
    
    // Thêm kí tự vào kết quả
    output := output + str[i];
    
    // Tăng biến lặp lên số lượng kí tự vừa được đếm
    i := i + count;
  end;
  
  // Xuất kết quả
  writeln('Ket qua: ', output);
  
  readln; // Dừng chương trình để xem kết quả
end.
