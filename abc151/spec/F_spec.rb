RSpec.describe 'test' do
  it 'test with "2\n0 0\n1 0\n"' do
    io = IO.popen("ruby abc151/F.rb", "w+")
    io.puts("2\n0 0\n1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("0.500000000000000000\n")
  end

  it 'test with "3\n0 0\n0 1\n1 0\n"' do
    io = IO.popen("ruby abc151/F.rb", "w+")
    io.puts("3\n0 0\n0 1\n1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("0.707106781186497524\n")
  end

  it 'test with "10\n10 9\n5 9\n2 0\n0 0\n2 7\n3 3\n2 5\n10 0\n3 7\n1 9\n"' do
    io = IO.popen("ruby abc151/F.rb", "w+")
    io.puts("10\n10 9\n5 9\n2 0\n0 0\n2 7\n3 3\n2 5\n10 0\n3 7\n1 9\n")
    io.close_write
    expect(io.readlines.join).to eq("6.726812023536805158\n")
  end

end
