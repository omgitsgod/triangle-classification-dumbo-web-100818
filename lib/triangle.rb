class Triangle
  attr_reader :l1, :l2, :l3

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    if @l1 + @l2 <= @l3 || @l1 + @l3 <= @l2 || @l2 + @l3 <= @l1
      begin
        raise TriangleError
      end
    elsif @l1 == @l2 && @l1 == @l3
      :equilateral
    elsif @l2 == @l3 || @l1 == @l3 || @l1 == @l2
      :isosceles
    elsif @l1 != @l2 && @l1 != @l3
      :scalene
    end
  end

  class TriangleError < StandardError
  end
end
