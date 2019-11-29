class Circle < Shape
  attr_accessor :radius

  def initialize(radius: nil)
    @radius = radius
  end

  def get_area
    raise Error::TypeError.new('Radius', 'Number') unless @radius.is_a?(Numeric)

    raise Error::TypeError.new('Radius', 'Positive Number') if @radius.negative?

    Math::PI * (@radius.to_f ** 2)
  end
end
