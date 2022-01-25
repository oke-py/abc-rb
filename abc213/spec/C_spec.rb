RSpec.describe 'test' do
  it 'test with "4 5 2\n3 2\n2 5\n"' do
    io = IO.popen("ruby abc213/C.rb", "w+")
    io.puts("4 5 2\n3 2\n2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("2 1\n1 2\n")
  end

  it 'test with "*****\n****2\n*1***\n*****"' do
    io = IO.popen("ruby abc213/C.rb", "w+")
    io.puts("*****\n****2\n*1***\n*****")
    io.close_write
    expect(io.readlines.join).to eq("*2\n1*")
  end

  it 'test with "1000000000 1000000000 10\n1 1\n10 10\n100 100\n1000 1000\n10000 10000\n100000 100000\n1000000 1000000\n10000000 10000000\n100000000 100000000\n1000000000 1000000000\n"' do
    io = IO.popen("ruby abc213/C.rb", "w+")
    io.puts("1000000000 1000000000 10\n1 1\n10 10\n100 100\n1000 1000\n10000 10000\n100000 100000\n1000000 1000000\n10000000 10000000\n100000000 100000000\n1000000000 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("1 1\n2 2\n3 3\n4 4\n5 5\n6 6\n7 7\n8 8\n9 9\n10 10\n")
  end

end
