load 'Ruby_Q4.rb'

words = File.open("text.txt", "r"){|f| f.read.split } # reads from a text file
numShapes=0 # initializing the number of object for Q6
numCircles=0
numRectangles=0
numEllipses=0
statistics = { "Shape" => numShapes, "Circle" => numCircles, "Rectangles" => numRectangles, "Ellipses" => numEllipses }
#declraed a hash table 

for i in 0...words.length() # for loop runs for all words in the text file

    if(words[i].class == String)
        if(words[i].eql?("shape")) # if word is a shape
            s = Shape.new() # creates new shape
            s.print
            statistics["Shape"] = statistics["Shape"]+1 # adds a new shape to the count
        end
        if(words[i].eql?("rectangle")) # if rectangle
            if (words[i+1].to_i>=0 && words[i+2].to_i>=0) # make sure values are good
                r = Rectangle.new(words[i+1].to_i, words[i+2].to_i) # creates rectangle
                r.print
                statistics["Rectangles"]= statistics["Rectangles"]+1 # update hash table
                statistics["Shape"] = statistics["Shape"]+1
            else 
                puts "Error: Invalid Rectangle"
            end     
        end
        if(words[i].eql?("ellipse")) # if ellipse
            if (words[i+1].to_i>=0 && words[i+2].to_i>=0) # checks if input is good
                e = Ellipse.new(words[i+1].to_i, words[i+2].to_i)# creates ellipse
                e.print
                statistics["Ellipses"]= statistics["Ellipses"]+1  # update hash table
                statistics["Shape"] = statistics["Shape"]+1
            else 
                puts "Error: Invalid Ellipse"
            end    
        end
        if(words[i].eql?("circle")) # if circle
            if (words[i+1].to_i>=0) # checks if input is good
                c = Circle.new(words[i+1].to_i) # ccreate new circle
                c.print
                statistics["Circle"]= statistics["Circle"]+1 # update hash table
                statistics["Shape"] = statistics["Shape"]+1 
            else 
                puts "Error: Invalid Circle"
            end        
        end
    end
end

#prints out the values and at the specific key of the hash table
puts "Statistics: "
puts "\tShape(s): "+ statistics["Shape"].to_s
puts "\tCircle(s): "+ statistics["Circle"].to_s
puts "\tRectangles(s): "+ statistics["Rectangles"].to_s
puts "\tEllipses(s): "+ statistics["Ellipses"].to_s
