
defmodule MyList do
  def mapsum([], _) do 0 end
  def mapsum([head | tail], fun) do
    fun.(head) + mapsum(tail, fun)
  end

  def max([x]) do x end
  def max([head | tail]) do
    Kernel.max(head, max(tail))
  end

end

IO.puts MyList.mapsum([1,2,3], &(&1 * &1))
IO.puts MyList.max([1,1,90,21,3])
