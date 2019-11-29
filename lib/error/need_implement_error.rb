module Error
  class NeedImplementError < CustomError
    def initialize
      super(:you_need_to_implment, 422, 'You need implemented a shape first')
    end
  end
end
