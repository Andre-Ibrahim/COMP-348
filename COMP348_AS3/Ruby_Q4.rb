include Math

class Shape
    attr_accessor :area, :name, :perimeter
    def initialize()
        @area=0
        @name="Shape"
        @perimeter=0
    end
    
    def print()
        puts "The name of the shape is: "+@name+". The area is: "+@area.to_s+". The perimeter is: "+      @perimeter.to_s+"."
    end
    def perimeter()
        return nil
    end
    def area()
        return nil
    end
end

class Circle < Shape
    attr_accessor :radius
    def initialize(radius)
        super()
        @radius=radius
        @name="circle"
        @area= @radius**2 *Math::PI
        @perimeter= @radius*2*Math::PI
    end
    
    def perimeter()
        return @perimeter
    end
    def area()
        return @area
    end
end

class Rectangle < Shape
    attr_accessor :height, :width
    def initialize(height, width)
        super()
        @height = height
        @width = width
        @name="rectangle"
        @area= @height * @width
        @perimeter= 2*@height + 2*@width
    end
    
    def perimeter()
        return @perimeter
    end
    def area()
        return @area
    end
end

class Elipse < Shape
    attr_accessor :a, :b
    def initialize(a, b)
        super()
        @a = a
        @b = b
        @name="elipse"
        @area= @a * @a * Math::PI
        @eccentricity = Math.sqrt(a**2 + b**2)
    end
    
    def perimeter()
        return @perimeter
    end
    def area()
        return @area
    end
    def eccentricity()
        return @eccentricity
    end
end


x = Shape.new()
x.print
puts x.perimeter()
puts x.area()
u = Circle.new(5)
u.print
puts u.perimeter()
puts u.area()
r = Rectangle.new(5, 4)
r.print
puts r.perimeter()
puts r.area()
e = Elipse.new(3, 4)
e.print
puts e.perimeter()
puts e.area()
puts e.eccentricity



