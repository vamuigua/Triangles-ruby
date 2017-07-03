class Triangle
    define_method(:initialize) do |side_1, side_2, side_3|
        @side_1 = side_1
        @side_2 = side_2
        @side_3 = side_3
    end
    
    #method for checking type of Triangle
    define_method(:type?) do
        #checks if its equilateral
        if ((@side_1.eql?(@side_2)) && (@side_1.eql?(@side_3)) && (@side_2.eql?(@side_3)))
            "equilateral"
        #checks if its isosceles
        elsif ((@side_1.eql?(@side_2)) || (@side_1.eql?(@side_3)) || (@side_3.eql?(@side_2)))
            "isosceles"
        #checks if its a scalene
        elsif (@side_1 != @side_2) && (@side_1 != @side_3) && (@side_3 != @side_2)
            "scalene"
        end
    end
end