class FizzBuzz
  def initialize
    @divisors = {3 => "Fizz", 5 => "Buzz"}
  end

  def count(n)
    number = Integer(n)
    words = @divisors.inject([]) do |r, (divisor, word_when_divisible)|
      r << word_when_divisible if number % divisor == 0; r
    end
    words.empty? ? number : words.join
  end

end