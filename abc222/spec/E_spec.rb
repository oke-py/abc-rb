RSpec.describe 'test' do
  it 'test with "4 5 0\n2 3 2 1 4\n1 2\n2 3\n3 4\n"' do
    io = IO.popen("ruby abc222/E.rb", "w+")
    io.puts("4 5 0\n2 3 2 1 4\n1 2\n2 3\n3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3 10 10000\n1 2 1 2 1 2 2 1 1 2\n1 2\n1 3\n"' do
    io = IO.popen("ruby abc222/E.rb", "w+")
    io.puts("3 10 10000\n1 2 1 2 1 2 2 1 1 2\n1 2\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10 2 -1\n1 10\n1 2\n2 3\n3 4\n4 5\n5 6\n6 7\n7 8\n8 9\n9 10\n"' do
    io = IO.popen("ruby abc222/E.rb", "w+")
    io.puts("10 2 -1\n1 10\n1 2\n2 3\n3 4\n4 5\n5 6\n6 7\n7 8\n8 9\n9 10\n")
    io.close_write
    expect(io.readlines.join).to eq("126\n")
  end

  it 'test with "5 8 -1\n1 4 1 4 2 1 3 5\n1 2\n4 1\n3 1\n1 5\n"' do
    io = IO.popen("ruby abc222/E.rb", "w+")
    io.puts("5 8 -1\n1 4 1 4 2 1 3 5\n1 2\n4 1\n3 1\n1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

end
