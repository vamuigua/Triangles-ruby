require('rspec')
  require('triangle')

  describe(Triangle) do
    describe("#type?") do
      it("returns true if all sides are equal") do
        test_equilateral = Triangle.new(15, 15, 15)
        expect(test_equilateral.type?()).to(eq("equilateral"))
      end
    end
  end