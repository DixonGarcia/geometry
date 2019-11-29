require 'rails_helper'

RSpec.describe Shape, type: :model do
  describe 'Validations' do
    it 'should return error if is not implemented' do
      expect { Shape.new.get_area }.to raise_exception('You need implemented a shape first')
    end
  end
end
