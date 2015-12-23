defmodule MyList do
  def span(from, to) when from > to, do: []

  def span(from, to) do
    [ from | span(from+1, to) ]
  end

  def prime_till(n) do
    range = MyList.span(2,n)
    for x <- range, _is_prime?(x), do: x
  end

  defp _is_prime?(x) do
    Enum.all?(MyList.span(2,x-1), &rem(x,&1) !== 0)
  end
end

IO.inspect MyList.prime_till(100)



