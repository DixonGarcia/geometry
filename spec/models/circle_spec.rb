require 'rails_helper'

RSpec.describe Circle, type: :model do
  describe 'Shape inheritance' do
    it { expect(described_class).to be < Shape }
  end
  describe '#area' do
    describe 'return error when the radius' do
      it 'is a nil value' do
        circle = Circle.new
        expect { circle.area }.to raise_exception('Radius should be a Number')
      end
      it 'is not a number' do
        circle = Circle.new(radius: 'string')
        expect { circle.area }.to raise_exception('Radius should be a Number')
      end
      it 'is not positive' do
        circle = Circle.new(radius: '-1')
        expect { circle.area }.to raise_exception('Radius should be a Positive Number')
      end
    end

    it 'return correctly' do
      circle = Circle.new(radius: '1')
      expect(circle.area).to eq(Math::PI)
    end
  end
end
