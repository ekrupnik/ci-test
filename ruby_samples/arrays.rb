a = [4,6,7,5]    # simple array declaration 
puts a.length         # => 4
a.rotate         # => [6, 7, 5, 4]
a.sort           # => [4, 5, 6, 7]
a.sort.reverse   # => [7, 6, 5, 4]
puts a[0]             # => 4
puts a[3]             # => 5
a[4] = 3         # => 3 ;resulting array is [4, 6, 7, 5, 3]
a << 1           # => [4, 6, 7, 5, 3, 1] ; useful when array size is unknown
a[10] = 0        # => 0 ;resulting array is [4, 6, 7, 5, 3, 1, nil, nil, nil, nil, 0]
puts a.length         # => 11
