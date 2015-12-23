defmodule MyEnum do
  def all?(list) do
    all?(list, fn x -> !!x end)
  end
  def all?([head | tail], fun) do
    if fun.(head) do
      all?(tail, fun)
    else
      false
    end
  end

  def all?([], _) do true end

  def filter([head|tail], fun) do
    if fun.(head) do
      [head] ++ filter(tail, fun)
    else
      [ ] ++ filter(tail, fun)
    end
  end

  def filter([], _fun) do [] end

  def split(list,count) do _split(list, [], count) end

  defp _split([head|tail],front,count) do
    IO.inspect(tail)
    IO.inspect front

    _split(tail, [head|front], count - 1)
  end

  defp _split(tail, front, 0) do
    [Enum.reverse(front), tail]
  end

  defp _split([], front, _),   do: [ Enum.reverse(front), [] ]

  def take(list, count) do
    split(list,count)
  end

  def flatten([head|tail]) when Kernel.is_list(head) do
      flatten(head ++ tail)
  end

  def flatten([head|tail]) do
      [head|flatten(tail)]
  end
  def flatten([]) do [] end
  def flatten(head) do head end

  def span(from, to) when from > to, do: []

  def span(from, to) do
    [ from | span(from+1, to) ]
  end
end

IO.puts MyEnum.all?(Enum.to_list(1..10), &(&1 > 5))
IO.puts MyEnum.all?(Enum.to_list(1..10), &(&1 > 20))
IO.puts MyEnum.all?(Enum.to_list(1..10), &(&1 < 11))

IO.inspect MyEnum.filter(Enum.to_list(1..10), &(&1 < 6))
IO.inspect MyEnum.filter(Enum.to_list(1..10), &rem(&1, 2) == 0)
IO.inspect MyEnum.take(Enum.to_list(1..10),3)
IO.inspect MyEnum.take(Enum.to_list(1..10),5)
IO.inspect MyEnum.flatten([1,2,[3],[4,[5,6],[7]]])

IO.inspect MyList.span(5, 10)


