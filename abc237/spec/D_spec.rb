RSpec.describe 'test' do
  it 'test with "5\nLRRLR\n"' do
    io = IO.popen("ruby abc237/D.rb", "w+")
    io.puts("5\nLRRLR\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2 4 5 3 0\n")
  end

  it 'test with "7\nLLLLLLL\n"' do
    io = IO.popen("ruby abc237/D.rb", "w+")
    io.puts("7\nLLLLLLL\n")
    io.close_write
    expect(io.readlines.join).to eq("7 6 5 4 3 2 1 0\n")
  end

end
