def reverse_alternate(input)

    words = input.split

    words.each_with_index do |word, i|
        words[i] = word.reverse if i.odd?
      end

    new_input = words.join(' ')

    return new_input
end

p reverse_alternate("Did it work?") #"Did ti work?"
p reverse_alternate("add             space?") #"add ?ecaps"
p reverse_alternate("Reverse every other word!") #"Reverse yreve other !drow"

