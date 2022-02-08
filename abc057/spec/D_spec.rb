RSpec.describe 'test' do
  it 'test with "5 2 2\n1 2 3 4 5\n"' do
    io = IO.popen("ruby abc057/D.rb", "w+")
    io.puts("5 2 2\n1 2 3 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("4.500000\n1\n")
  end

  it 'test with "4 2 3\n10 20 10 10\n"' do
    io = IO.popen("ruby abc057/D.rb", "w+")
    io.puts("4 2 3\n10 20 10 10\n")
    io.close_write
    expect(io.readlines.join).to eq("15.000000\n3\n")
  end

  it 'test with "5 1 5\n1000000000000000 999999999999999 999999999999998 999999999999997 999999999999996\n"' do
    io = IO.popen("ruby abc057/D.rb", "w+")
    io.puts("5 1 5\n1000000000000000 999999999999999 999999999999998 999999999999997 999999999999996\n")
    io.close_write
    expect(io.readlines.join).to eq("1000000000000000.000000\n1\n")
  end

  it 'test with "50 1 50\n1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1\n"' do
    io = IO.popen("ruby abc057/D.rb", "w+")
    io.puts("50 1 50\n1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1.000000\n1125899906842623\n")
  end

end
