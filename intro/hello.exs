prefix = fn pre ->
  fn rest ->
    pre <> " " <> rest
  end
end

mrs = prefix.("Elixir")
IO.puts mrs.("rocks")
