defmodule Genetic_Algorithm do

  def birth(n, generations) when generations <= 1 do
    IO.puts n
  end

  def birth(n, generations) do
    nx = (0.01 * :random.uniform(100)) * n + (0.5 * n)
    IO.puts nx
    if nx > n do
      n = nx
      IO.puts 'evolution!'
    end
    birth(n, generations-1)
  end

end

Genetic_Algorithm.birth(10, 100)
