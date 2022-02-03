RSpec.describe 'test' do
  it 'test with "5 4 1\n1 2\n2 3\n3 4\n3 5\n"' do
    io = IO.popen("ruby abc148/F.rb", "w+")
    io.puts("5 4 1\n1 2\n2 3\n3 4\n3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "5 4 5\n1 2\n1 3\n1 4\n1 5\n"' do
    io = IO.popen("ruby abc148/F.rb", "w+")
    io.puts("5 4 5\n1 2\n1 3\n1 4\n1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "2 1 2\n1 2\n"' do
    io = IO.popen("ruby abc148/F.rb", "w+")
    io.puts("2 1 2\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "9 6 1\n1 2\n2 3\n3 4\n4 5\n5 6\n4 7\n7 8\n8 9\n"' do
    io = IO.popen("ruby abc148/F.rb", "w+")
    io.puts("9 6 1\n1 2\n2 3\n3 4\n4 5\n5 6\n4 7\n7 8\n8 9\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

end
