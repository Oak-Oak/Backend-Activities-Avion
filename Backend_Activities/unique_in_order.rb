def unique_in_order(input_string)
    characters_array = string_to_array(input_string)
    unique_array = []

    characters_array.each_with_index do |char, i|
        #i > 0 ensure that we are not comparing to the previous of index 0 (nonexistent)
        next if i > 0 && char == characters_array[i - 1] #if current character (char) is equal to previous character [i-1] and is greater than 0, skip 
        unique_array.push(char) #push if not duplicate
        end
   
    unique_array
end


def string_to_array(input_string)
    input_string.chars #converts string to an array 
end #output would be ["h", "e", "l", "l", "o"]


p unique_in_order('AAAABBBCCDAABBB')
p unique_in_order('ABBCcAD')
p unique_in_order('12233')

  
