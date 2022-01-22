RSpec.describe 'test' do
  it 'test with "4 5\n1 2 1\n1 3 1\n1 4 1\n3 2 2\n4 2 2\n"' do
    io = IO.popen("ruby abc218/E.rb", "w+")
    io.puts("4 5\n1 2 1\n1 3 1\n1 4 1\n3 2 2\n4 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "3 3\n1 2 1\n2 3 0\n3 1 -1\n"' do
    io = IO.popen("ruby abc218/E.rb", "w+")
    io.puts("3 3\n1 2 1\n2 3 0\n3 1 -1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "2 3\n1 2 -1\n1 2 2\n1 1 3\n"' do
    io = IO.popen("ruby abc218/E.rb", "w+")
    io.puts("2 3\n1 2 -1\n1 2 2\n1 1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

end
