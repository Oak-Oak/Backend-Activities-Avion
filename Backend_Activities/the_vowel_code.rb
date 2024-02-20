def encode(str)
    
    encoded_str = str.gsub('a', '1')
    encoded_str = encoded_str.gsub('e', '2')
    encoded_str = encoded_str.gsub('i', '3')
    encoded_str = encoded_str.gsub('o', '4')
    encoded_str = encoded_str.gsub('u', '5')

    return encoded_str
end

def decode(str)
    
    decoded_str = str.gsub('1', 'a')
    decoded_str = decoded_str.gsub('2', 'e')
    decoded_str = decoded_str.gsub('3', 'i')
    decoded_str = decoded_str.gsub('4', 'o')
    decoded_str = decoded_str.gsub('5', 'u')

    return decoded_str
end

puts encode("backend activities")
puts decode("b1ck2nd 1ct3v3t32s")

puts encode("hello there")
puts decode("hello there")

puts encode("aeiou")
puts decode("12345")