RSpec.describe 'test' do
  it 'test with "4\n1 2 1\n"' do
    io = IO.popen("ruby abc269/H.rb", "w+")
    io.puts("4\n1 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n2\n0\n0\n")
  end

  it 'test with "6\n1 1 2 2 5\n"' do
    io = IO.popen("ruby abc269/H.rb", "w+")
    io.puts("6\n1 1 2 2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n6\n2\n0\n0\n0\n")
  end

  it 'test with "6\n1 1 1 1 1\n"' do
    io = IO.popen("ruby abc269/H.rb", "w+")
    io.puts("6\n1 1 1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n10\n10\n5\n1\n0\n")
  end

  it 'test with "10\n1 2 1 2 1 1 2 6 9\n"' do
    io = IO.popen("ruby abc269/H.rb", "w+")
    io.puts("10\n1 2 1 2 1 1 2 6 9\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n30\n47\n38\n16\n3\n0\n0\n0\n0\n")
  end

end
