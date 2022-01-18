RSpec.describe 'test' do
  it 'test with "5\n0 3 10\n3 3 10\n-1 0 10\n2 0 10000\n4 0 10\n"' do
    io = IO.popen("ruby abc220/G.rb", "w+")
    io.puts("5\n0 3 10\n3 3 10\n-1 0 10\n2 0 10000\n4 0 10\n")
    io.close_write
    expect(io.readlines.join).to eq("40\n")
  end

  it 'test with "6\n0 1 1\n1 4 20\n2 7 300\n5 6 4000\n4 3 50000\n3 0 600000\n"' do
    io = IO.popen("ruby abc220/G.rb", "w+")
    io.puts("6\n0 1 1\n1 4 20\n2 7 300\n5 6 4000\n4 3 50000\n3 0 600000\n")
    io.close_write
    expect(io.readlines.join).to eq("650021\n")
  end

  it 'test with "7\n-3 0 1\n-2 0 1\n-1 0 1\n0 0 1\n1 0 1\n2 0 1\n3 0 1\n"' do
    io = IO.popen("ruby abc220/G.rb", "w+")
    io.puts("7\n-3 0 1\n-2 0 1\n-1 0 1\n0 0 1\n1 0 1\n2 0 1\n3 0 1\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
