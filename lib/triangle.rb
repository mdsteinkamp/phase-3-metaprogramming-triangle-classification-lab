class Triangle
  attr_reader :side_1, :side_2, :side_3

  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end

  def kind
    sides = [side_1, side_2, side_3].sort
      if sides[0] <= 0 || sides[0] + sides[1] <= sides[2]
        raise TriangleError
      else [:scalene, :isosceles, :equilateral][ 3 - sides.uniq.size ]
      end

  end

  class TriangleError < StandardError
    def message
      "bad triangle!"
    end
  end

end