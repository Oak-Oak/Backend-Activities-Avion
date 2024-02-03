def remove_vowels(string)
    vowels = 'aeiouAEIOU'
    new_string = ''

        string.each_char do |char|
            new_string += char unless vowels.include?(char)
        end

        new_string
end

puts remove_vowels("Hello World")
puts remove_vowels("This website is for losers LOL!")
puts remove_vowels("Disemvowel Trolls")