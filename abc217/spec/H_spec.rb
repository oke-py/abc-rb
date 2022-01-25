RSpec.describe 'test' do
  it 'test with "3\n1 0 3\n3 1 0\n4 0 6\n"' do
    io = IO.popen("ruby abc217/H.rb", "w+")
    io.puts("3\n1 0 3\n3 1 0\n4 0 6\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "3\n1 0 1\n6 1 1\n8 0 -1\n"' do
    io = IO.popen("ruby abc217/H.rb", "w+")
    io.puts("3\n1 0 1\n6 1 1\n8 0 -1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "5\n1 0 1000000000\n2 1 -1000000000\n3 0 1000000000\n4 1 -1000000000\n5 0 1000000000\n"' do
    io = IO.popen("ruby abc217/H.rb", "w+")
    io.puts("5\n1 0 1000000000\n2 1 -1000000000\n3 0 1000000000\n4 1 -1000000000\n5 0 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("4999999997\n")
  end

end
