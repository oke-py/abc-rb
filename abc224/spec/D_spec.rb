RSpec.describe 'test' do
  it 'test with "5\n1 2\n1 3\n1 9\n2 9\n3 9\n3 9 2 4 5 6 7 8\n"' do
    io = IO.popen("ruby abc224/D.rb", "w+")
    io.puts("5\n1 2\n1 3\n1 9\n2 9\n3 9\n3 9 2 4 5 6 7 8\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "5\n1 2\n1 3\n1 9\n2 9\n3 9\n1 2 3 4 5 6 7 8\n"' do
    io = IO.popen("ruby abc224/D.rb", "w+")
    io.puts("5\n1 2\n1 3\n1 9\n2 9\n3 9\n1 2 3 4 5 6 7 8\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "12\n8 5\n9 6\n4 5\n4 1\n2 5\n8 9\n2 1\n3 6\n8 7\n6 5\n7 4\n2 3\n1 2 3 4 5 6 8 7\n"' do
    io = IO.popen("ruby abc224/D.rb", "w+")
    io.puts("12\n8 5\n9 6\n4 5\n4 1\n2 5\n8 9\n2 1\n3 6\n8 7\n6 5\n7 4\n2 3\n1 2 3 4 5 6 8 7\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "12\n6 5\n5 4\n4 1\n4 7\n8 5\n2 1\n2 5\n6 9\n3 6\n9 8\n8 7\n3 2\n2 3 4 6 1 9 7 8\n"' do
    io = IO.popen("ruby abc224/D.rb", "w+")
    io.puts("12\n6 5\n5 4\n4 1\n4 7\n8 5\n2 1\n2 5\n6 9\n3 6\n9 8\n8 7\n3 2\n2 3 4 6 1 9 7 8\n")
    io.close_write
    expect(io.readlines.join).to eq("16\n")
  end

end
