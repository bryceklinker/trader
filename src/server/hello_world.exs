
IO.puts "Hello World"

IO.puts 6 + 4

IO.puts :hello == :world

add = fn a, b -> a + b end
IO.puts is_function(add)

IO.puts add.(4, 5)

IO.puts length [1, 2, 3]

IO.puts length [7, 5, 4] ++ [8, 4, 3]

list = [5, 6, 3]
IO.puts hd(list)

IO.puts length(tl(list))

IO.puts 'hello' == "hello"

IO.puts elem({ :ok, "Stuff" }, 0)

IO.puts elem({ :ok, "Stuff" }, 1)

tuple = { :OKY, :SMOKY }

tuple = put_elem(tuple, 1, :DOKY)

IO.puts elem(tuple, 1)