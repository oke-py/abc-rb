RSpec.describe 'test' do
  it 'test with "5 5\n1 2\n2 3\n3 5\n2 4\n4 5\n0 8 3 4 0\n"' do
    io = IO.popen("ruby abc239/G.rb", "w+")
    io.puts("5 5\n1 2\n2 3\n3 5\n2 4\n4 5\n0 8 3 4 0\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n2\n3 4\n")
  end

  it 'test with "3 2\n1 2\n2 3\n0 1 0\n"' do
    io = IO.popen("ruby abc239/G.rb", "w+")
    io.puts("3 2\n1 2\n2 3\n0 1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n1\n2\n")
  end

  it 'test with "5 9\n1 2\n1 3\n1 4\n2 3\n2 4\n2 5\n3 4\n3 5\n4 5\n0 1000000000 1000000000 1000000000 0\n"' do
    io = IO.popen("ruby abc239/G.rb", "w+")
    io.puts("5 9\n1 2\n1 3\n1 4\n2 3\n2 4\n2 5\n3 4\n3 5\n4 5\n0 1000000000 1000000000 1000000000 0\n")
    io.close_write
    expect(io.readlines.join).to eq("3000000000\n3\n2 3 4\n")
  end

end
