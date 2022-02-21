RSpec.describe 'test' do
  it 'test with "4 1\n2 3 4 1\n"' do
    io = IO.popen("ruby abc145/F.rb", "w+")
    io.puts("4 1\n2 3 4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "6 2\n8 6 9 1 2 1\n"' do
    io = IO.popen("ruby abc145/F.rb", "w+")
    io.puts("6 2\n8 6 9 1 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "10 0\n1 1000000000 1 1000000000 1 1000000000 1 1000000000 1 1000000000\n"' do
    io = IO.popen("ruby abc145/F.rb", "w+")
    io.puts("10 0\n1 1000000000 1 1000000000 1 1000000000 1 1000000000 1 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("4999999996\n")
  end

end
