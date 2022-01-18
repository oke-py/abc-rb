RSpec.describe 'test' do
  it 'test with "5 2 4 10 4\n"' do
    io = IO.popen("ruby abc224/G.rb", "w+")
    io.puts("5 2 4 10 4\n")
    io.close_write
    expect(io.readlines.join).to eq("15.0000000000000000\n")
  end

  it 'test with "10 6 6 1 2\n"' do
    io = IO.popen("ruby abc224/G.rb", "w+")
    io.puts("10 6 6 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0.0000000000000000\n")
  end

  it 'test with "1000000000 1000000000 1 1000000000 1000000000\n"' do
    io = IO.popen("ruby abc224/G.rb", "w+")
    io.puts("1000000000 1000000000 1 1000000000 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("1000000000000000000.0000000000000000\n")
  end

end
