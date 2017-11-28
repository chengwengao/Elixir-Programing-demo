#dirs = File.open!("E:/devLearn/Elixir/testDir", [:read, :compressed])
dirs = ["E:/devLearn/Elixir/testDir"]
for dir <- dirs,
  file <- File.ls!(dir),
  path = Path.join(dir, file),
  File.regular?(path) do
    File.write(path, "\nhello world\n")
end

