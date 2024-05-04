def up_array(number)
    return nil if number.empty? || number.any? { |digit| !digit.is_a?(Integer) || !digit.between?(0, 9) }

    number[-1] += 1

    number.each_with_index do |digit, i|
        if digit == 10
          number[i] = 0
          if i > 0
            number[i - 1] += 1
          else
            number.unshift(1)
          end
        end
    end 

    number

end

p up_array([2,3,9]) #[2,4,0]
p up_array([4,3,2,5]) #[4,3,2,6]
p up_array([]) #nil
p up_array([10]) #nil
p up_array([9]) #[1,0]
p up_array(["a"]) #nil
p up_array([5.5]) #nil