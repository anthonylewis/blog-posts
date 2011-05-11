#
# Formula for pi from here:
# http://en.wikipedia.org/wiki/Pi#Computation_in_the_computer_age
#
# Ruby Factorial from here:
# http://rosettacode.org/wiki/Factorial#Ruby
#
def fact(n)
  (1..n).reduce(1, :*)
end

sum = 0.0

(0..8).each do |n|
  a = fact(2 * n) ** 3.0
  b = 42.0 * n + 5.0
  c = fact(n) ** 6.0
  d = 16.0 ** (3.0 * n + 1.0)

  sum += (a * b) / (c * d)

  puts 1.0 / sum
end

