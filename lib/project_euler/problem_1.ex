defmodule ProjectEuler.ProblemOne do
  def solve do
    Enum.reduce(0..999, 0, &reducer/2)
  end

  defp reducer(number, acc) when rem(number, 3) == 0 or rem(number, 5) == 0 do
    acc + number
  end

  defp reducer(_, acc) do
    acc
  end
end