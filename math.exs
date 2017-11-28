defmodule Math do
	@moduledoc """
	Provides math-related functions.

	## Examples
		iex> Math.sum(1,2)
		3

	"""

	@doc """
	Calculates the sum of two numbers.
	"""
	def sum(a,b) do
		a+b
	end

	def zero?(0) do
		true
	end

	def zero?(x) when is_number(x) do
		false
	end

	def sum_list([head|tail], calc) do
		sum_list(tail, head + calc)
	end

	def sum_list([], calc) do
		calc
	end

	def double_each([head|tail]) do
		[head * 2| double_each(tail)]
	end

	def double_each([]) do
		[]
	end

	def some_fun do
		import List, only: [duplicate: 2]
		duplicate :ok, 3
	end
end

IO.puts Math.sum(1,2)
IO.puts Math.zero?(0)
IO.puts Math.zero?(11)
IO.puts Math.sum_list([1, 2, 3], 3)
IO.puts Math.double_each([1,2,3])
IO.puts Math.some_fun()


