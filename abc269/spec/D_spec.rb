RSpec.describe 'test' do
  it 'test with "6\n-1 -1\n0 1\n0 2\n1 0\n1 2\n2 0\n"' do
    io = IO.popen("ruby abc269/D.rb", "w+")
    io.puts("6\n-1 -1\n0 1\n0 2\n1 0\n1 2\n2 0\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "4\n5 0\n4 1\n-3 -4\n-2 -5\n"' do
    io = IO.popen("ruby abc269/D.rb", "w+")
    io.puts("4\n5 0\n4 1\n-3 -4\n-2 -5\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "5\n2 1\n2 -1\n1 0\n3 1\n1 -1\n"' do
    io = IO.popen("ruby abc269/D.rb", "w+")
    io.puts("5\n2 1\n2 -1\n1 0\n3 1\n1 -1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
