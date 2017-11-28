defprotocol Blank do
  @doc """
  @fallback_to_any 给所有类型提供默认的协议实现
  """

  @fallback_to_any true
  def blank?(data)
end

  @doc """
  协议实现
  """
  defimpl Blank, for: Any do
    #范围小的先匹配，nil/false放前面
    def blank?(nil), do: true
    def blank?(false), do: true
    def blank?(_), do: false
  end

  IO.puts Blank.blank?(0)
  IO.puts Blank.blank?(false)
  IO.puts Blank.blank?(nil)