even_numbers = []

[1,2,3,4,5,6].each do |n|
  if n.even?
    even_numbers << n
  end
end

even_numbers
---------------------------

[1,2,3,4,5].select { |num|  num.even?  }   #=> [2, 4]



---------------------------

a = %w{ a b c d e f }
a.select { |v| v =~ /[aeiou]/ }  #=> ["a", "e"]
----------------------------

stock = {
  apples: 10,
  oranges: 5,
  bananas: 1
}
stock.select { |k, v| v > 1 }

# {:apples=>10, :oranges=>5}
----------------------------

fruits = %w(apple orange banana)
fruits.select.with_index { |word, idx| idx.even? }

# ["apple", "banana"]
-----------------------------

fruits = %w(apple orange banana)
fruits.select! { |fruit| fruit.start_with? "a" }

# ["apple"]
-----------------------------
