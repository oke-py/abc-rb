RSpec.describe 'test' do
  it 'test with "5\n2 4 6 8 10\n4 5\n3 4\n1 5\n2 4\n"' do
    io = IO.popen("ruby abc218/G.rb", "w+")
    io.puts("5\n2 4 6 8 10\n4 5\n3 4\n1 5\n2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "5\n6 4 6 10 8\n1 4\n1 2\n1 5\n1 3\n"' do
    io = IO.popen("ruby abc218/G.rb", "w+")
    io.puts("5\n6 4 6 10 8\n1 4\n1 2\n1 5\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "6\n2 2 6 4 6 6\n1 2\n2 3\n4 6\n2 5\n2 6\n"' do
    io = IO.popen("ruby abc218/G.rb", "w+")
    io.puts("6\n2 2 6 4 6 6\n1 2\n2 3\n4 6\n2 5\n2 6\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

end
