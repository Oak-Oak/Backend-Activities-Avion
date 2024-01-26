#Encapsulation, Abstraction, Polymorphism using inheritance, Duck Typing

#Encapsulation
class Numbers
  def initialize( number1,number2)
    @number1 = number1
    @number2 = number2
  end

  def display_info
    puts "Give me 2 numbers and I'll give you the sum of its squares"
    puts computation
  end

  private

  def computation
    @number1**2 + @number2**2
  end
end

numbers = Numbers.new(2,3)
numbers.display_info


#Abstraction




























# #duck typing
# class Square
#   attr_accessor :side_length

#   def initialize(side_length)
#     @side_length = side_length
#   end

#   def area
#     side_length * side_length
#   end
# end

# class Circle
#   attr_accessor :radius

#   def initialize(radius)
#     @radius = radius
#   end

#   def area
#     Math::PI * radius * radius
#   end
# end

# def calculate_area(shape)
#   shape.area
# end

# square = Square.new(5)
# circle = Circle.new(3)

# puts "Area of the square: #{calculate_area(square)}"  #area of square
# puts "Area of the circle: #{calculate_area(circle)}"   #area of circle