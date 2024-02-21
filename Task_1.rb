# frozen_string_literal: true

class FindSubValue
  def initialize(array)
    @array = array
  end

  def get_sub(target)
    result = []
    @array.combination(2) do |x, y|
      result << [x, y] if x + y == target
    end
    if result.any?
      result.each do |pair|
        puts pair.inspect
      end
    else
      puts 'not found'
    end
  end
end

arr = FindSubValue.new [4, 6, 7, 9, 10]

arr.get_sub 13       # in ra màn hình [6, 7], [9, 4]

arr.get_sub 14       # in ra màn hình not found
