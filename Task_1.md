# Tạo 1 class với tham số khởi tạo là 1 mảng các Interger
# Viết hàm get_sub, tham số truyền vào là 1 Integer. 
# Trả về kết quả là các cặp 2 phần tử có trong mảng khởi tạo và có tổng bằng tham số truyền vào
# Trả về not found nếu không tìm thấy 2 phần tử nào thoả mãn

class FindSubValue
  def initialize
    # code here
  end

  def get_sub
    # code here
  end
end

arr = FindSubValue.new [4, 6, 7, 9, 10]

arr.get_sub 13       # in ra màn hình [6, 7], [9, 4]
arr.get_sub 14       # in ra màn hình not found