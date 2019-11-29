class Circle < Shape
  attr_accessor :radius

  def initialize(radius: nil)
    @radius = radius
  end

  def area
    raise Error::TypeError.new('Radius', 'Number') if @radius.nil?

    raise Error::TypeError.new('Radius', 'Number') unless @radius.numeric?

    raise Error::TypeError.new('Radius', 'Positive Number') if @radius.to_f.negative?

    Math::PI * (@radius.to_f**2)
  end
end
