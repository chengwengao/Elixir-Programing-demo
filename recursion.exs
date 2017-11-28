defmodule Recursion do
	def print_multi_times(msg, n) when n <= 1 do
		IO.puts msg
	end

	def print_multi_times(msg, n) do
		IO.puts msg
		print_multi_times(msg, n - 1)
	end
end

Recursion.print_multi_times("Hello", 3)