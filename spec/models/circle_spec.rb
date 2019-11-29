require 'rails_helper'

RSpec.describe Circle, type: :model do
  describe '#get_area' do
    describe 'return error when the radius' do
      it 'it is not a number' do
        circle = Circle.new(radius: 'string')
        expect { circle.get_area }.to raise_exception('Radius should be a Number')
      end
      it 'it is not positive' do
        circle = Circle.new(radius: -1)
        expect { circle.get_area }.to raise_exception('Radius should be a Positive Number')
      end
    end

    it 'return correctly' do
      circle = Circle.new(radius: 1)
      expect(circle.get_area).to eq(Math::PI)
    end
  end
end
