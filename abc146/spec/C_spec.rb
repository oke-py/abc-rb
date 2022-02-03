RSpec.describe 'test' do
  it 'test with "10 7 100\n"' do
    io = IO.popen("ruby abc146/C.rb", "w+")
    io.puts("10 7 100\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

  it 'test with "2 1 100000000000\n"' do
    io = IO.popen("ruby abc146/C.rb", "w+")
    io.puts("2 1 100000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("1000000000\n")
  end

  it 'test with "1000000000 1000000000 100\n"' do
    io = IO.popen("ruby abc146/C.rb", "w+")
    io.puts("1000000000 1000000000 100\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "1234 56789 314159265\n"' do
    io = IO.popen("ruby abc146/C.rb", "w+")
    io.puts("1234 56789 314159265\n")
    io.close_write
    expect(io.readlines.join).to eq("254309\n")
  end

end
