include Math

class Shape
    attr_accessor :area, :name, :perimeter
    def initialize()
        @area="undefined"
        @name="Shape"
        @perimeter="undefined"
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
        if radius <0 then
            puts "Error, Invalid circle"
            exit(1)
        end    
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
        if height<0 || width<0 then
            puts "Error, Invalid rectangle"
            exit(1)
        end 
        @height = height
        @width = width
        @name="rectangle"
        @area= @height * @width
        if(width == 0 || height == 0)
            @perimeter = 0
        else
            @perimeter= 2*@height + 2*@width
        end
    end
    
    def perimeter()
        return @perimeter
    end
    def area()
        return @area
    end
end

class Ellipse < Shape
    attr_accessor :a, :b
    def initialize(a, b)
        super()
        if a<0 || b<0 then
            puts "Error, Invalid elipse"
            #exit(1)
        end 
        @a = a
        @b = b
        @name="ellipse"
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


# x = Shape.new()
# x.print
# puts x.perimeter()
# puts x.area()
# u = Circle.new(5)
# u.print
# puts u.perimeter()
# puts u.area()
# r = Rectangle.new(5, 4.5)
# r.print
# puts r.perimeter()
# puts r.area()
# e = Ellipse.new(3, 4)
# e.print
# puts e.perimeter()
# puts e.area()
# puts e.eccentricity



