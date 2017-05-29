# Algorithm / Reference taken from http://www.blackwasp.co.uk/numbertoroman.aspx
#
defmodule ArabicToRomanConverter do
  @moduledoc """
  ArabicToRomanConverter converts a given Arabic number to a Roman Number. in the range 1 - 3999
  EX: 
  $ elixir arabic_to_roman_converter.exs
  "Enter the number to be converted to Roman: "
  "5 in Roman is V"
  """

  def get_input do
    input = IO.gets "Enter the number to be converted to Roman: "
    { input, _  } = String.trim(input, "\n") |> Integer.parse
    "#{input} in Roamn is #{convert(input)}" |> IO.puts
  end

  defp convert(num) when num >= 1000, do: convert(num, "M", 1000)
  defp convert(num) when num >= 900, do: convert(num, "CM", 900)
  defp convert(num) when num >= 500, do: convert(num, "D", 500)
  defp convert(num) when num >= 400, do: convert(num, "CD", 400)
  defp convert(num) when num >= 100, do: convert(num, "C", 100)
  defp convert(num) when num >= 90, do: convert(num, "XC", 90)
  defp convert(num) when num >= 50, do: convert(num, "L", 50)
  defp convert(num) when num >= 40, do: convert(num, "XL", 40)
  defp convert(num) when num >= 10, do: convert(num, "X", 10)
  defp convert(num) when num == 9, do: "IX"
  defp convert(num) when num >= 5, do: convert(num, "V", 5)
  defp convert(num) when num == 4, do: "IV"
  defp convert(num) when num == 0, do: ""
  defp convert(num), do: String.duplicate("I", num)

  defp convert(number, roman, arabic) do
    times = div(number, arabic)
    String.duplicate(roman, times) <> convert(rem(number, arabic))
  end
end

ArabicToRomanConverter.get_input
