RSpec.describe 'test' do
  it 'test with "3\nLLR\n"' do
    io = IO.popen("ruby abc238/H.rb", "w+")
    io.puts("3\nLLR\n")
    io.close_write
    expect(io.readlines.join).to eq("831870297\n")
  end

  it 'test with "10\nRRRRRRLLRR\n"' do
    io = IO.popen("ruby abc238/H.rb", "w+")
    io.puts("10\nRRRRRRLLRR\n")
    io.close_write
    expect(io.readlines.join).to eq("460301586\n")
  end

end
