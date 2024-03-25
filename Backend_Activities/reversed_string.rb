def reverse(string)

    new_string = ""

    index = string.length - 1 
    while index >= 0
        new_string += string[index]
        index -= 1
    end

    new_string
    
end

puts reverse("hello")
puts reverse("how are you?")
