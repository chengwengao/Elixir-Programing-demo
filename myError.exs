defmodule MyError do
  defexception [:message]

  def exception(value) do
    msg = "exception happens, got: #{inspect value}"
    %MyError{message: msg}
  end
end

value = [:hello]


raise MyError,
      message: "did not get what was expected, got: #{inspect value}"

raise MyError, value