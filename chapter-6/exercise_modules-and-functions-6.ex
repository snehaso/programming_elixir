defmodule Chop do
  def guess(actual, range = low..high) do
    g =  div(low+high, 2)
    IO.puts "Is it #{g}"
    guess(actual, g, range)
  end

  def guess(actual, guess, _low..high) when guess < actual do
    guess(actual, guess+1..high)
  end

  def guess(actual, guess, low.._high) when guess > actual do
    guess(actual, low..guess-1)
  end

  def guess(actual, actual, _) do
    IO.puts "YES it is #{actual}"
  end
end
