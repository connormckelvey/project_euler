defmodule ProjectEulerTest do
  use ExUnit.Case
  doctest ProjectEuler
  alias ProjectEuler.ProblemOne
  alias ProjectEuler.ProblemTwo

  test "Problem One" do
    assert ProblemOne.solve == 233168
  end

  test "Problem Two" do
    assert ProblemTwo.solve == 4613732
  end
end
