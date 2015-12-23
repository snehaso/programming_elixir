defmodule MyList do
  def span(from, to) when from > to do [] end
  def span(from, to) do
    [from | span(from + 1 ,to)]
  end
end

IO.inspect MyList.span(2,20)

