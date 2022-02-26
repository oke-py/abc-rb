RSpec.describe 'test' do
  it 'test with "7 8 7\n3 4\n5 6\n1 4\n2 1\n2 8\n4 5\n5 7\n6 2\n6 6\n"' do
    io = IO.popen("ruby abc241/F.rb", "w+")
    io.puts("7 8 7\n3 4\n5 6\n1 4\n2 1\n2 8\n4 5\n5 7\n6 2\n6 6\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "4 6 2\n3 2\n3 5\n4 5\n2 5\n"' do
    io = IO.popen("ruby abc241/F.rb", "w+")
    io.puts("4 6 2\n3 2\n3 5\n4 5\n2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "1 10 1\n1 5\n1 1\n1 7\n"' do
    io = IO.popen("ruby abc241/F.rb", "w+")
    io.puts("1 10 1\n1 5\n1 1\n1 7\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
