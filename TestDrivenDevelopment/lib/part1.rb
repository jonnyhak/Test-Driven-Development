
def my_uniq(array)
    return [] if array.length == 0
    result = []

    (0...array.length).each do |n1|
        if !result.include?(array[n1]) #if its anything else other than what we want 
            result << array[n1]
        end
    end

    result
end


def two_sum(array)
    pairs = []

    (0...array.length - 1).each do |i|
      ((i + 1)...array.length).each do |j|
        pairs << [i, j] if array[i] + array[j] == 0
      end
    end

    pairs
end


class Array
    def my_transpose
        
        self.transpose

    end

end

 
    def stock_picker(prices) #[48, 27, 110, 220, 86, 37, 16, 105] => [1, 3]


    end
