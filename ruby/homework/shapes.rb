class Shape
  def initialize(color = "red", filled = true)
    @@color = color
    @@filled = filled
  end

  def area
    raise NotImplementedError
  end

  def perimeter
    raise NotImplementedError
  end

  def to_s
    "Shape[color=#{@@color},filled=#{@@filled}]"
  end

  protected

  attr_accessor :color, :filled 
end

class Circle < Shape
  def initialize(radius = 1.0, color=nil, filled=nil)
    if color.nil? and filled.nil?
      super()
    else
      super(color, filled)
    end
    @radius = radius
  end

  def area
    puts Math::PI * (@radius ** 2)
  end

  def perimeter
    puts Math::PI * (@radius + @radius)
  end

  def to_s
    "Circle[#{super},radius=#{@radius}]"
  end

  protected

  attr_accessor :radius
end

class Rectangle < Shape
  def initialize(width=1.0, length=1.0, color=nil, filled=nil)
    if color.nil? and filled.nil?
      super()
    else
      super(color, filled)
    end
    @width=width
    @length=length
  end

  def area
    area = @width * @length
    puts area
  end

  def perimeter
    perimeter = (2 * @length) + (2 * @width)
    puts perimeter
  end

  def to_s
    "Rectangle[#{super},width=#{@width},length=#{@length}]"
  end

  protected

  attr_accessor :width, :length
end

class Square < Rectangle
  attr_accessor :side

  def initialize(side=nil, color=nil, filled=nil)
    if color.nil? and filled.nil?
      super()
    else
      super(side, side, color, filled)
    end
  end

  def width(side)
    @width = side
  end

  def length(side)
    @length = side
  end

  def to_s
    "Square[#{super}]"
  end
end

# TEST
puts "Shape"
shape = Shape.new
puts shape.to_s

puts 'Circle'
circle = Circle.new
puts circle.to_s 
puts circle.area

puts 'Circle 2'
circle2 = Circle.new(1.5, "blue", false)
puts circle2.to_s 
puts circle2.area


puts 'Rectangle'
rect = Rectangle.new
puts rect.to_s 
puts rect.area

puts 'Rectangle2'
rect2 = Rectangle.new(1.5, 1.5)
puts rect2.to_s 
puts rect2.area

puts 'Square'
sqr = Square.new
puts sqr.to_s
puts sqr.perimeter

puts 'Square2'
sqr2 = Square.new(4, "green", false)
puts sqr2.to_s
sqr2.area