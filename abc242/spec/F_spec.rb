RSpec.describe 'test' do
  it 'test with "2 2 1 1\n"' do
    io = IO.popen("ruby abc242/F.rb", "w+")
    io.puts("2 2 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "1 2 1 1\n"' do
    io = IO.popen("ruby abc242/F.rb", "w+")
    io.puts("1 2 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "40 40 30 30\n"' do
    io = IO.popen("ruby abc242/F.rb", "w+")
    io.puts("40 40 30 30\n")
    io.close_write
    expect(io.readlines.join).to eq("467620384\n")
  end

end
