defmodule MyString do
  def printable_ascii(str) do
    printable_chars = ?\s..?~
    Enum.all?(str, &(Enum.member? printable_chars, &1))
  end

  def anagram?(sqs1, sqs2), do: Enum.sort(sqs1) == Enum.sort(sqs2)

  def calculate(statement) do
    _calculate(String.split(to_string(statement)))
  end

  defp _calculate([num1|[operation,num2]]) do
    {n1,_}=Integer.parse(num1)
    {n2,_}=Integer.parse(num2)
    case operation do
      "+" -> n1 + n2
      "-" -> n1 - n2
      "*" -> n1*n2
      "/" -> n1 / n2
    end
  end

  def capitalize_sentences(str) do
    IO.puts String.split(str, ".") |>
    Enum.map(&String.lstrip(&1)) |>
    Enum.map(&String.capitalize(&1)) |>
    Enum.join(". ")
  end
end

IO.inspect MyString.printable_ascii('cat!')    #=> true
IO.inspect MyString.printable_ascii('∂x/∂y')   #=> false
IO.inspect MyString.anagram?('sneha', 'eshan')
IO.inspect MyString.anagram?('sneha', 'eshanw')

IO.inspect MyString.calculate('123 + 27') #=> 150
IO.inspect MyString.calculate('123 - 23') #=> 100
IO.inspect MyString.calculate('10 * 23') #=> 230
IO.inspect MyString.calculate('100 / 5') #=> 20
MyString.capitalize_sentences("oh. a DOG. woof.")
