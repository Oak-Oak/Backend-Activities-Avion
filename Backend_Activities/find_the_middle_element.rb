def gimme(array)
    array.each_with_index do |num, i|
        if num != array.max && num != array.min 
            return i
        end
    end
end

p gimme([2, 3, 1])
p gimme([5, 10, 14])
p gimme([7, 9, 8])
