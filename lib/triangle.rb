class Triangle
    define_method(:initialize) do |side_1, side_2, side_3|
        @side_1 = side_1
        @side_2 = side_2
        @side_3 = side_3
    end
    
    #method for checking type of Triangle
    
    #chaecks if its equilateral
    define_method(:type?) do
        if ((@side_1.eql?(@side_2)) && (@side_1.eql?(@side_3)) && (@side_2.eql?(@side_3)))
        "equilateral"
    end
end
end