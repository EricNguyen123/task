# Cho trước 1 string và 1 mảng CÁC STRING CÓ ĐỘ DÀI NHƯ NHAU.
# Viết 1 hàm trả về các index bắt đầu của các sub-string trong string gốc và các sub-string thoả mãn:
#    1. sub_string chứa CHÍNH XÁC các string ở trong mảng ban đầu (cả về từ và số lần xuất hiện)
#    2. Thứ tự các string trong sub-string là tùy ý, không cần tuân theo thứ tự trong mảng ban đầu

def get_index str, arr_words
  # code here
  # [index1, index2, index3, ...]
end

str ="mainamthenammaibun"
arr_words = ["nam", "mai"]
get_index str, arr_words      # in ra màn hình [0,9].



str = "thinhnghianghianghiatuyenthinh"
arr_words = ["thinh", "nghia", "tuyen", "thinh"]
get_index str, arr_words      # in ra màn hình not found

str = "mainamnammaichinammaibun"
arr_words = ["mai", "nam", "chi"]
get_index str, arr_words      # in ra màn hình [6, 9, 12]