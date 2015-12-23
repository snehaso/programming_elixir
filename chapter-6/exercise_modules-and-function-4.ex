defmodule Arithmetic do
  def sum(0) do 0 end
  def sum(n) do n + sum(n-1) end

end


IO.puts Arithmetic.sum(1)
IO.puts Arithmetic.sum(3)
IO.puts Arithmetic.sum(10)
