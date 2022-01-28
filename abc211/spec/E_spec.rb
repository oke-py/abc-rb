RSpec.describe 'test' do
  it 'test with "3\n5\n#.#\n...\n..#\n"' do
    io = IO.popen("ruby abc211/E.rb", "w+")
    io.puts("3\n5\n#.#\n...\n..#\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "#.# \#@# \#@# \#@# \#@#\n@@@ .@@ @@. @@@ @@@\n@@# @@# @@# .@# @.#\n"' do
    io = IO.popen("ruby abc211/E.rb", "w+")
    io.puts("#.# \#@# \#@# \#@# \#@#\n@@@ .@@ @@. @@@ @@@\n@@# @@# @@# .@# @.#\n")
    io.close_write
    expect(io.readlines.join).to eq("\#@#\n@.@\n@@#\n")
  end

  it 'test with "2\n2\n#.\n.#\n"' do
    io = IO.popen("ruby abc211/E.rb", "w+")
    io.puts("2\n2\n#.\n.#\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "8\n8\n........\n........\n........\n........\n........\n........\n........\n........\n"' do
    io = IO.popen("ruby abc211/E.rb", "w+")
    io.puts("8\n8\n........\n........\n........\n........\n........\n........\n........\n........\n")
    io.close_write
    expect(io.readlines.join).to eq("64678\n")
  end

end
