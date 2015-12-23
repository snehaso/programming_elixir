defmodule Times do
  def double(n) do
    n * 2
  end

  def triple(n) do
    n * 3
  end

  def quadruple(n) do
    double(double(n))
  end
end

IO.puts Times.double(6)
IO.puts Times.triple(6)
IO.puts Times.quadruple(6)

