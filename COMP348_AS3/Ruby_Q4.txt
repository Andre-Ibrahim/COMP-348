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
        @area= @radius*3
        @perimeter= @radius*2
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

x = Shape.new()
x.print
puts x.perimeter()
x = Circle.new(5)
x.print
puts x.perimeter()

