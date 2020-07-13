def add(a, b)
  return a+b
end

def subtract (a, b)
  return a-b
end

def sum(a)
  b  = 0
  a.each do |i|
    b = b + i
  end
  return b
end

def multiply (a, b)
  return a*b
end

def power(a, b)
  return a**b
end

def factorial(a)
  return (1..a).inject(:*) || 1
end



=begin
require_relative '../lib/02_calculator'

end

describe "#power" do
  it "raises one number to the power of another number"
  expect (power(4, 5)).to eq(1024)
end

# http://en.wikipedia.org/wiki/Factorial
describe "#factorial" do
  it "computes the factorial of 0"
  expect (factorial(0)).to eq(1)
  it "computes the factorial of 1"
  expect (factorial(5)).to eq(1)
  it "computes the factorial of 2"
  expect (factorial(5)).to eq(2)
  it "computes the factorial of 5"
  expect (factorial(5)).to eq(120)
  it "computes the factorial of 10"
  expect (factorial(5)).to eq(3628800)
end

=end
