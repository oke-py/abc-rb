RSpec.describe 'test' do
  it 'test with "9 3\n0001000100\n"' do
    io = IO.popen("ruby abc146/F.rb", "w+")
    io.puts("9 3\n0001000100\n")
    io.close_write
    expect(io.readlines.join).to eq("1 3 2 3\n")
  end

  it 'test with "5 4\n011110\n"' do
    io = IO.popen("ruby abc146/F.rb", "w+")
    io.puts("5 4\n011110\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "6 6\n0101010\n"' do
    io = IO.popen("ruby abc146/F.rb", "w+")
    io.puts("6 6\n0101010\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

end
