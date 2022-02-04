RSpec.describe 'test' do
  it 'test with "4 2\n1 1 3 4\n"' do
    io = IO.popen("ruby abc151/E.rb", "w+")
    io.puts("4 2\n1 1 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("11\n")
  end

  it 'test with "6 3\n10 10 10 -10 -10 -10\n"' do
    io = IO.popen("ruby abc151/E.rb", "w+")
    io.puts("6 3\n10 10 10 -10 -10 -10\n")
    io.close_write
    expect(io.readlines.join).to eq("360\n")
  end

  it 'test with "3 1\n1 1 1\n"' do
    io = IO.popen("ruby abc151/E.rb", "w+")
    io.puts("3 1\n1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10 6\n1000000000 1000000000 1000000000 1000000000 1000000000 0 0 0 0 0\n"' do
    io = IO.popen("ruby abc151/E.rb", "w+")
    io.puts("10 6\n1000000000 1000000000 1000000000 1000000000 1000000000 0 0 0 0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("999998537\n")
  end

end
