defmodule MyDQS do
  def centre(list) do
    longest_string = Enum.max_by(list, &(String.length(&1)))
    column_length = String.length(longest_string)
    Enum.map(list, &(_centre_align(&1, column_length)))
  end

  defp _centre_align(str, length) do
  str_length = String.length(str)
    right_pad = div((length-1 - str_length),2)
    left_pad = length + right_pad
    inter_str = String.rjust(str, str_length + left_pad)
    IO.puts String.ljust(inter_str, String.length(inter_str) + right_pad)
  end
end


MyDQS.centre(["cat", "zebra", "elephant"])
