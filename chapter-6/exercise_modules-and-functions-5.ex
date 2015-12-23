defmodule Mean do
  def gcd(x,0) do x end
  def gcd(x,y) do gcd(y,rem(x,y)) end
end
