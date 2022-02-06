RSpec.describe 'test' do
  it 'test with "2 3 1\n1 1\n1 2\n2 2\n1 2\n"' do
    io = IO.popen("ruby abc106/D.rb", "w+")
    io.puts("2 3 1\n1 1\n1 2\n2 2\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "10 3 2\n1 5\n2 8\n7 10\n1 7\n3 10\n"' do
    io = IO.popen("ruby abc106/D.rb", "w+")
    io.puts("10 3 2\n1 5\n2 8\n7 10\n1 7\n3 10\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n1\n")
  end

  it 'test with "10 10 10\n1 6\n2 9\n4 5\n4 7\n4 7\n5 8\n6 6\n6 7\n7 9\n10 10\n1 8\n1 9\n1 10\n2 8\n2 9\n2 10\n3 8\n3 9\n3 10\n1 10\n"' do
    io = IO.popen("ruby abc106/D.rb", "w+")
    io.puts("10 10 10\n1 6\n2 9\n4 5\n4 7\n4 7\n5 8\n6 6\n6 7\n7 9\n10 10\n1 8\n1 9\n1 10\n2 8\n2 9\n2 10\n3 8\n3 9\n3 10\n1 10\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n9\n10\n6\n8\n9\n6\n7\n8\n10\n")
  end

end
