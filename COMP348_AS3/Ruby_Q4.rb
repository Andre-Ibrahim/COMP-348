include Math

class Shape # declaring a class called shape
    attr_accessor :area, :name, :perimeter
    def initialize() # constructor method
        @area="undefined"
        @name="Shape"
        @perimeter="undefined"
    end
    
    def print() # print method that will be inherited
        puts "The name of the shape is: "+@name+". The area is: "+@area.to_s+". The perimeter is: "+      @perimeter.to_s+"."
    end
    def perimeter() # getter method
        return nil
    end
    def area()
        return nil # getter method
    end
end

class Circle < Shape #Circle inherits shape class
    attr_accessor :radius
    def initialize(radius)
        super() # calls super to make a shape
        if radius <0 then
            puts "Error, Invalid circle"
            exit(1)
        end    
        @radius=radius
        @name="circle"
        @area= @radius**2 *Math::PI # new area calculation
        @perimeter= @radius*2*Math::PI # new perimeter calculation
    end
    
    def perimeter()
        return @perimeter
    end
    def area()
        return @area
    end
end

class Rectangle < Shape # rectangle class inherits shape
    attr_accessor :height, :width
    def initialize(height, width)
        super()
        if height<0 || width<0 then # makes sure height and width is valid
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

class Ellipse < Shape # elipse class inherits from shape
    attr_accessor :a, :b
    def initialize(a, b)
        super()
        if a<0 || b<0 then
            puts "Error, Invalid elipse" # makes sure it is a valid ellipse
            #exit(1)
        end 
        @a = a
        @b = b
        @name="ellipse"
        @area= @a * @a * Math::PI
        @eccentricity = Math.sqrt(a**2 + b**2) # new field called eccentricity
    end
    
    def perimeter()
        return @perimeter
    end
    def area()
        return @area
    end
    def eccentricity() # getter for new method
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



