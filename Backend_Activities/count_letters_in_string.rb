def count_letters(string)

    # letter_count = Hash.new(0) #create new hash with 0 as default
    letter_count = {}.tap { |h| h.default = 0 }

    string.each_char do |char|
      if char.match?(/[a-z]/)
        letter_count[char.to_sym] += 1
      end
    end

    letter_count

end

p count_letters("hello") #h=1 e=1 l=2 o=1
p count_letters("how are you?") #h=1 o=2 w=1 a=1 r=1 e=1 y=1 u=1
