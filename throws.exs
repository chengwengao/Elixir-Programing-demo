try do
  Enum.each -50..50, fn(x) ->
    if rem(x, 13) == 0, do: throw(x)
  end
  "got nothing"
  catch
    x -> "got #{x}"
end

Enum.find -50..50, &(rem(&1, 13)== 0)
