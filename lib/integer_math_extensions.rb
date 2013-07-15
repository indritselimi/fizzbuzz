module IntegerMathExtensions
  refine Integer do
    def divisible_by?(divisor)
      self % divisor == 0
    end
  end
end