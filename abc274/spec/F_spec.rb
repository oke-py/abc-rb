RSpec.describe 'test' do
  it 'test with "3 10\n100 0 100\n1 10 30\n10 20 10\n"' do
    io = IO.popen("ruby abc274/F.rb", "w+")
    io.puts("3 10\n100 0 100\n1 10 30\n10 20 10\n")
    io.close_write
    expect(io.readlines.join).to eq("111\n")
  end

  it 'test with "3 10\n100 100 100\n1 10 30\n10 20 10\n"' do
    io = IO.popen("ruby abc274/F.rb", "w+")
    io.puts("3 10\n100 100 100\n1 10 30\n10 20 10\n")
    io.close_write
    expect(io.readlines.join).to eq("100\n")
  end

  it 'test with "4 10\n1000 100 10\n100 99 1\n10 0 100\n1 1 1\n"' do
    io = IO.popen("ruby abc274/F.rb", "w+")
    io.puts("4 10\n1000 100 10\n100 99 1\n10 0 100\n1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1110\n")
  end

end
