def is_isogram(char)
    lowercased_char = char.downcase
    characters_array = string_to_array(lowercased_char)

    is_isogram = !has_same_character?(characters_array)
    end

    def string_to_array(input_string)
    input_string.chars #converts string to an array 
    end #output would be ["h", "e", "l", "l", "o"]

    def has_same_character?(array)         #i 0    1    2    3    4
        array.each_with_index do |char, i| #["h", "e", "l", "l", "o"]
            array.each_with_index do |other_char, j|
                next if i == j #if the same index as itself, skip
                return true if char == other_char
            end
    end

    false
end



puts is_isogram('Dermatoglyphics'); #true
puts is_isogram("isogram"); #true
puts is_isogram("documentary"); #true
puts is_isogram("aba") #false
puts is_isogram("moOse") #false
puts is_isogram("isIsogram") #false


  
