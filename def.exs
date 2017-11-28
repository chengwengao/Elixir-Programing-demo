defmodule Math do
	def sum(a,b) do
		a+b
	end

	defp do_sum(a,b) do
		a+b
	end
end

defmodule Pmath do
	def psum(a, b) do
		a+b
	end

	def divide(a, b) do
		a - b
	end
end

IO.puts Pmath.psum(2, 2)
IO.puts Math.sum(1, 2)
IO.puts Math.do_sum(1, 2)


