class Array

  def my_uniq
    ans_arr = []
    self.each do |el|
      ans_arr << el unless ans_arr.include?(el)
    end
    ans_arr
  end

  def two_sum
    ans_arr = []
    self.each_with_index do |el1, i|

      self.each_with_index do |el2, j|
        if ((el1 + el2 == 0 && !ans_arr.include?([j, i]) && i != j))
          ans_arr.push([i, j])
        end
      end
    end
    ans_arr
  end

  def stock_picker
    best_days = nil
    biggest_diff = 0

    self.each_with_index do |el1, i|

      (i + 1...self.length).each do |j|
        if self[j] - el1 > biggest_diff
          biggest_diff = self[j] - el1
          best_days = [i, j]
        end
      end
    end
    best_days 
  end

end

def my_transpose(arr)
  result_array = []
  arr.each_index do |i|
    arr.each_index do |j|
      result_array[j] = [] if i == 0
      result_array[j][i] = arr[i][j]
    end
  end
  result_array
end
