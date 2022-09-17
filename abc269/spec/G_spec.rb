RSpec.describe 'test' do
  it 'test with "3 6\n0 2\n1 0\n0 3\n"' do
    io = IO.popen("ruby abc269/G.rb", "w+")
    io.puts("3 6\n0 2\n1 0\n0 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n0\n2\n1\n1\n3\n2\n")
  end

  it 'test with "2 3\n1 1\n0 1\n"' do
    io = IO.popen("ruby abc269/G.rb", "w+")
    io.puts("2 3\n1 1\n0 1\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n0\n1\n-1\n")
  end

  it 'test with "5 12\n0 1\n0 3\n1 0\n0 5\n0 2\n"' do
    io = IO.popen("ruby abc269/G.rb", "w+")
    io.puts("5 12\n0 1\n0 3\n1 0\n0 5\n0 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n0\n1\n1\n1\n2\n1\n2\n2\n2\n3\n3\n4\n")
  end

end
