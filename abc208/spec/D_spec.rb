RSpec.describe 'test' do
  it 'test with "3 2\n1 2 3\n2 3 2\n"' do
    io = IO.popen("ruby abc208/D.rb", "w+")
    io.puts("3 2\n1 2 3\n2 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("25\n")
  end

  it 'test with "3 0\n"' do
    io = IO.popen("ruby abc208/D.rb", "w+")
    io.puts("3 0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "5 20\n1 2 6\n1 3 10\n1 4 4\n1 5 1\n2 1 5\n2 3 9\n2 4 8\n2 5 6\n3 1 5\n3 2 1\n3 4 7\n3 5 9\n4 1 4\n4 2 6\n4 3 4\n4 5 8\n5 1 2\n5 2 5\n5 3 6\n5 4 5\n"' do
    io = IO.popen("ruby abc208/D.rb", "w+")
    io.puts("5 20\n1 2 6\n1 3 10\n1 4 4\n1 5 1\n2 1 5\n2 3 9\n2 4 8\n2 5 6\n3 1 5\n3 2 1\n3 4 7\n3 5 9\n4 1 4\n4 2 6\n4 3 4\n4 5 8\n5 1 2\n5 2 5\n5 3 6\n5 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("517\n")
  end

end
