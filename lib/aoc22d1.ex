defmodule Aoc22d1 do
  def run_p1 do
    input_to_ints()
    |> Enum.reduce(&max/2)
    |> IO.puts()
  end

  def run_p2 do
    input_to_ints()
    |> Enum.sort(:desc)
    |> Enum.take(3)
    |> Enum.sum()
    |> IO.puts()
  end

  defp input_to_ints() do
    File.read!("input_d1")
    |> String.split("\n\n")
    |> Enum.map(&line_to_int/1)
  end

  defp line_to_int(line) do
    line
    |> String.split("\n")
    |> Enum.reduce(0, fn e, acc -> acc + String.to_integer(e) end)
  end
end
