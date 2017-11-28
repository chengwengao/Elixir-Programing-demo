defprotocol Blank do
  @doc "Returns true if data is considered blank/empty"
  def blank?(data)
end

#整型永远不为空
defimpl Blank, for: Integer do
  def blank?(_), do: false
end

#只有空列表是空的
defimpl Blank, for: List do
  def blank?([]), do: true
  def blank?(_), do: false
end

# 一定要记住，我们不能匹配 %{} ，因为它能match所有的map。
# 但是我们能检查它的size是不是0
# 检查size是很快速的操作
defimpl Blank, for: Map do
  def blank?(map), do: map_size(map) == 0
end

# 只有false和nil这两个原子被认为是空得
defimpl Blank, for: Atom do
  def blank?(nil), do: true
  def blank?(false), do: true
  def blank?(_), do: false
end

#defimpl Blank, for: User do
#  def blank?(_), do: false
#end

IO.puts(Blank.blank?(0))
IO.puts(Blank.blank?([]))
IO.puts(Blank.blank?([1,2,3]))
#IO.puts(Blank.Map.blank?(%{})
IO.puts(Blank.blank?(nil))
IO.puts(Blank.blank?(false))
IO.puts(Blank.blank?(:a))
#IO.puts Blank.blank?(%User{})