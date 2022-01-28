RSpec.describe 'test' do
  it 'test with "2 2\n1 6\n4 9\n"' do
    io = IO.popen("ruby abc212/C.rb", "w+")
    io.puts("2 2\n1 6\n4 9\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "1 1\n10\n10\n"' do
    io = IO.popen("ruby abc212/C.rb", "w+")
    io.puts("1 1\n10\n10\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "6 8\n82 76 82 82 71 70\n17 39 67 2 45 35 22 24\n"' do
    io = IO.popen("ruby abc212/C.rb", "w+")
    io.puts("6 8\n82 76 82 82 71 70\n17 39 67 2 45 35 22 24\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

end
