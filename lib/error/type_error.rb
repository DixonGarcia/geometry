module Error
  class TypeError < CustomError
    def initialize(field, type)
      super(:wrong_type_of_field, 422, "#{field} should be a #{type}")
    end
  end
end
