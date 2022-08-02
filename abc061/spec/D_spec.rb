RSpec.describe 'test' do
  it 'test with "3 3\n1 2 4\n2 3 3\n1 3 5\n"' do
    io = IO.popen("ruby abc061/D.rb", "w+")
    io.puts("3 3\n1 2 4\n2 3 3\n1 3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "2 2\n1 2 1\n2 1 1\n"' do
    io = IO.popen("ruby abc061/D.rb", "w+")
    io.puts("2 2\n1 2 1\n2 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("inf\n")
  end

  it 'test with "6 5\n1 2 -1000000000\n2 3 -1000000000\n3 4 -1000000000\n4 5 -1000000000\n5 6 -1000000000\n"' do
    io = IO.popen("ruby abc061/D.rb", "w+")
    io.puts("6 5\n1 2 -1000000000\n2 3 -1000000000\n3 4 -1000000000\n4 5 -1000000000\n5 6 -1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("-5000000000\n")
  end

end
