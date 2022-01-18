RSpec.describe 'test' do
  it 'test with "3 3 7\n1 1 4\n1 2 7\n2 1 3\n2 3 5\n3 1 2\n3 2 5\n3 3 5\n"' do
    io = IO.popen("ruby abc224/E.rb", "w+")
    io.puts("3 3 7\n1 1 4\n1 2 7\n2 1 3\n2 3 5\n3 1 2\n3 2 5\n3 3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n0\n2\n0\n3\n1\n0\n")
  end

  it 'test with "4 7 0\n3 0 5\n2 5 5\n"' do
    io = IO.popen("ruby abc224/E.rb", "w+")
    io.puts("4 7 0\n3 0 5\n2 5 5\n")
    io.close_write
    expect(io.readlines.join).to eq("5 7 20\n2 7 8\n2 6 4\n4 1 9\n1 5 4\n2 2 7\n5 5 2\n1 7 2\n4 6 6\n1 4 1\n2 1 10\n5 6 9\n5 3 3\n3 7 9\n3 6 3\n4 3 4\n3 3 10\n4 2 1\n3 5 4\n1 2 6\n4 7 9\n")
  end

  it 'test with "2\n4\n1\n5\n3\n6\n6\n2\n7\n0\n0\n4\n1\n5\n3\n0\n5\n2\n4\n0\n"' do
    io = IO.popen("ruby abc224/E.rb", "w+")
    io.puts("2\n4\n1\n5\n3\n6\n6\n2\n7\n0\n0\n4\n1\n5\n3\n0\n5\n2\n4\n0\n")
    io.close_write
    expect(io.readlines.join).to eq()
  end

end
