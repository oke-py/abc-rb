RSpec.describe 'test' do
  it 'test with "2 10\n3 6\n4 5\n"' do
    io = IO.popen("ruby abc240/C.rb", "w+")
    io.puts("2 10\n3 6\n4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "2 10\n10 100\n10 100\n"' do
    io = IO.popen("ruby abc240/C.rb", "w+")
    io.puts("2 10\n10 100\n10 100\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "4 12\n1 8\n5 7\n3 4\n2 6\n"' do
    io = IO.popen("ruby abc240/C.rb", "w+")
    io.puts("4 12\n1 8\n5 7\n3 4\n2 6\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
