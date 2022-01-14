RSpec.describe 'test' do
  it 'test with "##\n.#\n"' do
    io = IO.popen("ruby abc229/A.rb", "w+")
    io.puts("##\n.#\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with ".#\n#.\n"' do
    io = IO.popen("ruby abc229/A.rb", "w+")
    io.puts(".#\n#.\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
