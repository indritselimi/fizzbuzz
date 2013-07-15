require "rspec"
require "fizz_buzz"


describe FizzBuzz do

  let(:childrens) { FizzBuzz.new }

  def count_of(n)
    childrens.count(n)
  end

  context "Number not divisible" do
    [1, 2, 7].each do |n|
      it "counts #{n}" do
        count_of(n).should == n
      end
    end
  end

  {3 => "Fizz", 5 => "Buzz"}.each do |divisor, word|
    context "Say #{word}" do
      [divisor, divisor * 2, divisor * 4, divisor * 101].each do |n|
        it "when #{n}" do
          count_of(n).should == word
        end
      end
    end
  end

  context "Say FizzBuzz" do
    [3 * 5, 3 * 5 * 5, 3 * 4 * 5, 3 * 1022 * 5].each do |n|
      it "when #{n}" do
        count_of(n).should == "FizzBuzz"
      end
    end
  end

  it "should accept other integer representations" do
    count_of("3").should == "Fizz"
  end

  it "should signal an error when parameter doesn't represent an integer" do
    expect { count_of("three") }.to raise_error(ArgumentError)

  end

end


