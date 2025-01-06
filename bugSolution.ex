```elixir
list = [1, 2, 3, 4, 5]

Enum.map(list, fn x ->
  if x == 3 do
    {:error, :shutdown}
  else
    {:ok, x}
  end
end)
|> Enum.each(fn
  {:ok, x} -> IO.puts(x)
  {:error, reason} -> IO.puts("Error: #{reason}")
end)
```