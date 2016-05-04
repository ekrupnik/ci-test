puts (0...10).class    # => Range
puts (0..9).class      # => Range
puts (0..2).first      # => 0
puts (0..2).last       # => 2 

(0..3).each { |x| print x }              # outputs, 0123
(0...10).reverse_each { |x| print x }    # outputs, 9876543210
(-3..3).each { |x| print x.abs }         # outputs, 3210123

# Enumerator dosent require 'each' to iterate
5.upto(10) { |x| print "#{x}\n" }               # outputs, 5678910 
(5..10).each { |x| print "#{x}\n" }             # outputs, 5678910
