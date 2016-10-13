defmodule ProjectEuler.ProblemOne do
  defmodule SolutionOne do
    def solve do
      Enum.reduce(0..999, 0, &reducer/2)
    end

    defp reducer(number, acc) do
      case { rem(number, 3), rem(number, 5) } do
        { 0, _ } -> acc + number
        { _, 0 } -> acc + number
        _ -> acc
      end
    end

  end
end