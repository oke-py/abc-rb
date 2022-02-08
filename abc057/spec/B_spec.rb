RSpec.describe 'test' do
  it 'test with "2 2\n2 0\n0 0\n-1 0\n1 0\n"' do
    io = IO.popen("ruby abc057/B.rb", "w+")
    io.puts("2 2\n2 0\n0 0\n-1 0\n1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n1\n")
  end

  it 'test with "3 4\n10 10\n-10 -10\n3 3\n1 2\n2 3\n3 5\n3 5\n"' do
    io = IO.popen("ruby abc057/B.rb", "w+")
    io.puts("3 4\n10 10\n-10 -10\n3 3\n1 2\n2 3\n3 5\n3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n1\n2\n")
  end

  it 'test with "5 5\n-100000000 -100000000\n-100000000 100000000\n100000000 -100000000\n100000000 100000000\n0 0\n0 0\n100000000 100000000\n100000000 -100000000\n-100000000 100000000\n-100000000 -100000000\n"' do
    io = IO.popen("ruby abc057/B.rb", "w+")
    io.puts("5 5\n-100000000 -100000000\n-100000000 100000000\n100000000 -100000000\n100000000 100000000\n0 0\n0 0\n100000000 100000000\n100000000 -100000000\n-100000000 100000000\n-100000000 -100000000\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n4\n3\n2\n1\n")
  end

end
