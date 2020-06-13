load 'Ruby_Q4.rb'

words = File.open("text.txt", "r"){|f| f.read.split }


for i in 0...words.length()

    if(words[i].class == String)
        if(words[i].eql?("shape"))
            s = Shape.new()
            s.print
        end
        if(words[i].eql?("rectangle"))
            r = Rectangle.new(words[i+1].to_i, words[i+2].to_i)
            r.print
        end
        if(words[i].eql?("ellipse"))
            e = Ellipse.new(words[i+1].to_i, words[i+2].to_i)
            e.print
        end
        if(words[i].eql?("circle"))
            c = Circle.new(words[i+1].to_i)
            c.print
        end
    end
end

