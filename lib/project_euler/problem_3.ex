defmodule ProjectEuler.ProblemThree do
  @target 600851475143

  def solve do
    start = find_start @target 
    start..3
      |> Stream.filter(&is_factor/1)
      |> Stream.filter(&is_prime/1)
      |> Enum.take(1)
      |> List.first()
  end

  defp find_start(number) do
    10000..1
      |> Stream.filter(fn(x) -> rem(number, x) == 0 end)
      |> Enum.take(1)
      |> List.first()
      |> (&(number/&1)).() 
      |> trunc()
  end

  defp is_factor(divisor) do
    rem(@target, divisor) == 0
  end

  def is_prime(given) do
    !((given..2 |> Stream.filter(fn(divisor) -> rem(given, divisor) == 0 end) |> Enum.take(2) |> length()) == 2)
  end
end