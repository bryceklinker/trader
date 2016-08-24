add = fn a, b -> a + b end

list = [5, 6, 3]

IO.puts "Hello World"

IO.puts 6 + 4

IO.puts :hello == :world

IO.puts is_function(add)

IO.puts add.(4, 5)

IO.puts length [1, 2, 3]

IO.puts length [7, 5, 4] ++ [8, 4, 3]

IO.puts hd(list)

IO.puts length(tl(list))

IO.puts 'hello' == "hello"