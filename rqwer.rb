# a1 = rand(-10..10)
# a2 = rand(-10..10)
# a3 = rand(-10..10)
# a4 = rand(-10..10)
# a5 = rand(-10..10)
# a6 = rand(-10..10)
# a7 = rand(-10..10)
# a8 = rand(-10..10)
# a9 = rand(-10..10)

#array = [[a1, a2, a3],
#          [a4, a5, a6],
#          [a7, a8, a9]]

#p array.flatten.select {|a| a > -1}

#p Array.new(3) {Array.new(3) {rand(-10..10)}}


hash = {'Yes' => 23, 'b' => 'travel', 'yesterday' => 34, 5 => '234', yesss: :fg, try: 30,
        key: 'some value', ' yesterday1 '=> 34,' yesteryear '=> 2014}

p hash.keys.map { |v| v.to_s.downcase }