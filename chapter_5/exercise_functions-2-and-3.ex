print = fn
  (0, 0, _) -> IO.puts "FizzBuzz"
  (0, _, _ ) -> IO.puts "Fizz"
  (_, 0 ,_ ) -> IO.puts "Buzz"
  (_, _, c) -> IO.puts c
end
print.(0,0,2)
print.(0,1,2)
print.(1,0,2)
print.(1,2,3)

cal = fn (n)-> print.(rem(n,3), rem(n,5),n)
end

cal.(10)
cal.(11)
cal.(12)
cal.(13)
cal.(14)
cal.(15)
cal.(16)
