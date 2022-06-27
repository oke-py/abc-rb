RSpec.describe 'test' do
  it 'test with "2 3 3\n11\n101\n"' do
    io = IO.popen("ruby agc025/F.rb", "w+")
    io.puts("2 3 3\n11\n101\n")
    io.close_write
    expect(io.readlines.join).to eq("10000\n10010\n")
  end

  it 'test with "5 8 3\n10101\n10101001\n"' do
    io = IO.popen("ruby agc025/F.rb", "w+")
    io.puts("5 8 3\n10101\n10101001\n")
    io.close_write
    expect(io.readlines.join).to eq("100000\n10110100\n")
  end

  it 'test with "10 10 10\n1100110011\n1011001101\n"' do
    io = IO.popen("ruby agc025/F.rb", "w+")
    io.puts("10 10 10\n1100110011\n1011001101\n")
    io.close_write
    expect(io.readlines.join).to eq("10000100000010001000\n10000100000000100010\n")
  end

end
