#Encapsulation, Abstraction, Polymorphism by inheritance, Duck-typing

#For Encapsulation
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
    @number1**2 + @number2**2 #number1 and number2, are being encapsulated under computation method
  end
end

numbers = Numbers.new(2,3)
numbers.display_info


#Abstraction

class Numbers
  def initialize( number1,number2)
    @number1 = number1
    @number2 = number2
  end

  def display_info
    puts "Give me 2 numbers and I'll give you the sum of its squares"
    puts computation
  end

  private #abstracts/ hide how the computation is made

  def computation
    @number1**2 + @number2**2
  end
end


#Polymorphism by inheritance
class Shape
  def area
    #will be overwritten from subclass
  end
end

class Square < Shape #inherits from shape
  attr_accessor :side_length

  def initialize(side_length)
    @side_length = side_length
  end

  def area #overrides the area method
    side_length * side_length
  end
end

class Circle < Shape #inherits from shape
  attr_accessor :radius

  def initialize(radius) 
    @radius = radius
  end

  def area #overrides the area method
    Math::PI * radius * radius
  end
end

def calculate_area(shape) #calls the area method based on the type of the object
  shape.area
end

square = Square.new(5) 
circle = Circle.new(3)

puts "Area of the square: #{calculate_area(square)}"  # Area of square
puts "Area of the circle: #{calculate_area(circle)}"   # Area of circle


#duck typing
class Square
  attr_accessor :side_length

  def initialize(side_length)
    @side_length = side_length
  end

  def area
    side_length * side_length
  end
end

class Circle
  attr_accessor :radius

  def initialize(radius)
    @radius = radius
  end

  def area
    Math::PI * radius * radius
  end
end

def calculate_area(shape) #doesn't check the type of shape, intstead it responds to area method
  shape.area
end

square = Square.new(5)
circle = Circle.new(3)

puts "Area of the square: #{calculate_area(square)}"  #area of square
puts "Area of the circle: #{calculate_area(circle)}"   #area of circle