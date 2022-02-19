RSpec.describe 'test' do
  it 'test with "5 2\n1 2 3 4 5\n1 4\n2 1\n2 5\n3 2\n1 2\n2 1\n"' do
    io = IO.popen("ruby abc239/E.rb", "w+")
    io.puts("5 2\n1 2 3 4 5\n1 4\n2 1\n2 5\n3 2\n1 2\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n5\n")
  end

  it 'test with "6 2\n10 10 10 9 8 8\n1 4\n2 1\n2 5\n3 2\n6 4\n1 4\n2 2\n"' do
    io = IO.popen("ruby abc239/E.rb", "w+")
    io.puts("6 2\n10 10 10 9 8 8\n1 4\n2 1\n2 5\n3 2\n6 4\n1 4\n2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n10\n")
  end

  it 'test with "4 4\n1 10 100 1000\n1 2\n2 3\n3 4\n1 4\n2 3\n3 2\n4 1\n"' do
    io = IO.popen("ruby abc239/E.rb", "w+")
    io.puts("4 4\n1 10 100 1000\n1 2\n2 3\n3 4\n1 4\n2 3\n3 2\n4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n10\n100\n1000\n")
  end

end
