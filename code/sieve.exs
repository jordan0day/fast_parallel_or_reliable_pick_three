defmodule Eratosthenes do
  def sieve([]) do
    IO.puts "Got an empty list."
    IO.puts "Returning []\n"
    []
  end
  def sieve([current | rest]) when current < 2 do
    IO.puts "#{current} is less than 2, so it can't be prime."
    IO.puts "Returning sieve(#{inspect rest})\n"
    sieve(rest)
  end
  def sieve([current | rest]) do
    filtered = Enum.filter(rest, fn num -> rem(num, current) != 0 end)
    IO.puts "#{current} is prime. Filtered out multiples of #{current}."
    IO.puts "Returning [#{current}] ++ sieve(#{inspect filtered})\n"
    [current] ++ sieve(filtered)
  end
end