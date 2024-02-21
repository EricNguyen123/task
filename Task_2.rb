# frozen_string_literal: true

def get_index(str, arr_words)
  result = []
  arr_words.permutation(arr_words.size) do |x|
    new_str = x.join
    index = str.index(new_str)
    result << index unless index.nil?
  end
  if result.empty?
    puts 'not found'
  else
    puts result.sort.inspect
  end
end

str = 'mainamthenammaibun'
arr_words = %w[nam mai]
get_index str, arr_words      # in ra màn hình [0,9].

str = 'thinhnghianghianghiatuyenthinh'
arr_words = %w[thinh nghia tuyen thinh]
get_index str, arr_words      # in ra màn hình not found

str = 'mainamnammaichinammaibun'
arr_words = %w[mai nam chi]
get_index str, arr_words      # in ra màn hình [6, 9, 12]
