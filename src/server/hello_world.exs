
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

IO.puts "Hello" <> " " <>"World"

IO.puts false and false

IO.puts false or is_atom(:false)

IO.puts false and raise("This won't actually happen")
IO.puts true or raise("Again this won't actually happen")

IO.puts 1 == 1.0
IO.puts 1 === 1.0

IO.puts 1 < :something

x = 1
IO.puts 1 = x

{ a, b, c } = {"Hello", "World", "!" }
IO.puts a
IO.puts b
IO.puts c

{ :ok, result } = { :ok, 15}
IO.puts result

[ a, b, c ] = [ 5, 7, 2 ]
IO.puts a
IO.puts b
IO.puts c

[head | tail] = [ 6, 7, 1 ]
IO.puts head
IO.puts hd(tail)

[h | _] = [2, 3, 7, 9]
IO.puts h

case {1, 2, 3} do
    {4, 5, 6} ->
        IO.puts "Matched {4, 5, 6}"
    {1, x, 3} ->
        IO.puts "Matched {1, x, 3}"
    _ ->
        IO.puts "Matched _"
end

y = 5
case 4 do 
    ^y ->
        IO.puts "Matched y"
    _ -> 
        IO.puts "Matched _"
end

case {1, 2, 3} do
    {1, x, 3} when x > 0 ->
        IO.puts "Matched {1, x, 3} when x > 0"
    _ ->
        IO.puts "Matched _"
end

f = fn
    x, y when x > 0 -> x + y
    x, y -> x * y
end
IO.puts f.(6, 4)
IO.puts f.(-1, 5)

cond do
    2 + 4 == 5 ->
        IO.puts "Matched cond 2 + 4 == 5"
    2 * 2 == 3 ->
        IO.puts "Matched cond 2 * 2 == 3"
    1 + 1 == 2 ->
        IO.puts "Matched cond 1 + 1 == 2"
end

IO.puts is_number(if true do
    1 + 2 
end)

string = "Hello"
IO.puts byte_size(string)

bigstring = "hełło"
IO.puts byte_size(bigstring)
IO.puts String.length(bigstring)

bitstring = <<4, 3, 2>>
IO.puts byte_size(bitstring)
IO.puts String.valid?(bitstring)

cool_concat = "hełło" <> <<123, 125>>
IO.puts(cool_concat)

normal_size = <<0>>
IO.puts normal_size

over_size = <<256>>
IO.puts over_size

utf8_size = <<256 :: utf8>>
IO.puts utf8_size

<<1, 2, x>> = <<1, 2, 6>>
IO.puts x

"he" <> rest = "hello"
IO.puts rest

hello_chars = 'Hello'
IO.puts hello_chars
IO.puts is_list(hello_chars)

list_tuples = [ {:a, 5}, {:b, 6} ]
IO.puts list_tuples[:a]

list_tuples_simple = [ a: 5, b: 6 ]
IO.puts list_tuples == list_tuples_simple

big_list = list_tuples ++ [c: 7, d: 9]
IO.puts big_list[:d]

first = if false, do: :this, else: :that
IO.puts first

second = if(false, [do: :this, else: :that])
IO.puts second

simple_map = %{ :a => 5, 2 => :b}
IO.puts simple_map[:a]
IO.puts simple_map[2]
IO.puts simple_map[:c] == nil

better_map = %{ :a => 65, :b => 8, :c => 98 }
IO.puts Map.get(better_map, :a)