load 'Ruby_Q4.rb'

words = File.open("text.txt", "r"){|f| f.read.split }
numShapes=0
numCircles=0
numRectangles=0
numEllipses=0
statistics = { "Shape" => numShapes, "Circle" => numCircles, "Rectangles" => numRectangles, "Ellipses" => numEllipses }

for i in 0...words.length()

    if(words[i].class == String)
        if(words[i].eql?("shape"))
            s = Shape.new()
            s.print
            statistics["Shape"] = statistics["Shape"]+1
        end
        if(words[i].eql?("rectangle"))
            if (words[i+1].to_i>=0 && words[i+2].to_i>=0)
                r = Rectangle.new(words[i+1].to_i, words[i+2].to_i)
                r.print
                statistics["Rectangles"]= statistics["Rectangles"]+1
                statistics["Shape"] = statistics["Shape"]+1
            else 
                puts "Error: Invalid Rectangle"
            end     
        end
        if(words[i].eql?("ellipse"))
            if (words[i+1].to_i>=0 && words[i+2].to_i>=0)
                e = Ellipse.new(words[i+1].to_i, words[i+2].to_i)
                e.print
                statistics["Ellipses"]= statistics["Ellipses"]+1
                statistics["Shape"] = statistics["Shape"]+1
            else 
                puts "Error: Invalid Ellipse"
            end    
        end
        if(words[i].eql?("circle"))
            if (words[i+1].to_i>=0)
                c = Circle.new(words[i+1].to_i)
                c.print
                statistics["Circle"]= statistics["Circle"]+1
                statistics["Shape"] = statistics["Shape"]+1
            else 
                puts "Error: Invalid Circle"
            end        
        end
    end
end

puts "Statistics: "
puts "\tShape(s): "+ statistics["Shape"].to_s
puts "\tCircle(s): "+ statistics["Circle"].to_s
puts "\tRectangles(s): "+ statistics["Rectangles"].to_s
puts "\tEllipses(s): "+ statistics["Ellipses"].to_s
