RSpec.describe 'test' do
  it 'test with "6\n0 0\n0 1\n1 0\n1 1\n2 0\n2 1\n"' do
    io = IO.popen("ruby abc218/D.rb", "w+")
    io.puts("6\n0 0\n0 1\n1 0\n1 1\n2 0\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "4\n0 1\n1 2\n2 3\n3 4\n"' do
    io = IO.popen("ruby abc218/D.rb", "w+")
    io.puts("4\n0 1\n1 2\n2 3\n3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "7\n0 1\n1 0\n2 0\n2 1\n2 2\n3 0\n3 2\n"' do
    io = IO.popen("ruby abc218/D.rb", "w+")
    io.puts("7\n0 1\n1 0\n2 0\n2 1\n2 2\n3 0\n3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
