defmodule ProjectEuler.ProblemTwo do
  defmodule SolutionOne do
    def solve do
      do_fib([2, 1]) |> Enum.reduce(0, &reducer/2)  
    end

    defp do_fib([ first | [ second | tail] ]) do
      next = first + second
      case next <= 4_000_000 do
        true -> do_fib([next, first, second] ++ tail)
        false -> [first, second] ++ tail
      end
    end

    defp reducer(number, acc) do
      case rem(number, 2) do
        0 -> acc + number
        _ -> acc
      end
    end

  end
end