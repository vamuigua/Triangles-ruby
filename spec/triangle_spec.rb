require('rspec')
  require('triangle')

  describe(Triangle) do
    describe("#type?") do
      it("returns true if all sides are equal") do
        test_equilateral = Triangle.new(15, 15, 15)
        expect(test_equilateral.type?()).to(eq("equilateral"))
      end
      it("returns true if either of 2 sides are equal") do
          test_isosceles = Triangle.new(15,12,12)
          expect(test_isosceles.type?()).to(eq("isosceles"))
      end
       it("returns true if neither of the sides are equal to each other") do
           test_scalene = Triangle.new(10,12,13)
           expect(test_scalene.type?()).to(eq("scalene"))
       end
        it("it returns true if the sum of the lengths of any two sides of a triangle is less than or equal to the length of the third side") do
            test_nat = Triangle.new(1,5,2)
            expect(test_nat.type?()).to(eq("Not a triangle"))
        end
    end
  end