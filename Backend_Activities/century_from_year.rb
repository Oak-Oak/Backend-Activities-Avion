def century_from_year(year)
    century = (year/100) 
    century += 1 unless year % 100 == 0 #check if divisible by 100 with 0 remainder, if not + 1

    century
end

puts century_from_year(1705)
puts century_from_year(1900)
puts century_from_year(1601)
puts century_from_year(2000)