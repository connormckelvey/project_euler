defmodule ProjectEulerTest do
  use ExUnit.Case
  doctest ProjectEuler
  alias ProjectEuler.ProblemOne
  alias ProjectEuler.ProblemTwo
  alias ProjectEuler.ProblemThree

  test "Problem One" do
    assert ProblemOne.solve == 233168
  end

  test "Problem Two" do
    assert ProblemTwo.solve == 4613732
  end

  test "Problem Three" do
    assert ProblemThree.solve == 6857
  end
end
