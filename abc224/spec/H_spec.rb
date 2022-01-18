RSpec.describe 'test' do
  it 'test with "3 4\n4 3 6\n5 2 3 4\n1 2 3 2\n2 1 2 3\n3 2 1 2\n"' do
    io = IO.popen("ruby abc224/H.rb", "w+")
    io.puts("3 4\n4 3 6\n5 2 3 4\n1 2 3 2\n2 1 2 3\n3 2 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("37\n")
  end

  it 'test with "1 1\n10\n10\n0\n"' do
    io = IO.popen("ruby abc224/H.rb", "w+")
    io.puts("1 1\n10\n10\n0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "5 6\n3 2 6 7 5\n4 9 8 6 2 3\n2 0 2 1 1 0\n2 3 2 1 0 0\n2 2 4 0 2 2\n4 1 0 3 0 2\n1 0 0 2 2 5\n"' do
    io = IO.popen("ruby abc224/H.rb", "w+")
    io.puts("5 6\n3 2 6 7 5\n4 9 8 6 2 3\n2 0 2 1 1 0\n2 3 2 1 0 0\n2 2 4 0 2 2\n4 1 0 3 0 2\n1 0 0 2 2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("79\n")
  end

end
