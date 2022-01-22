RSpec.describe 'test' do
  it 'test with "3 3\n1 2\n1 3\n2 3\n"' do
    io = IO.popen("ruby abc218/F.rb", "w+")
    io.puts("3 3\n1 2\n1 3\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n1\n")
  end

  it 'test with "4 4\n1 2\n2 3\n2 4\n3 4\n"' do
    io = IO.popen("ruby abc218/F.rb", "w+")
    io.puts("4 4\n1 2\n2 3\n2 4\n3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n2\n3\n2\n")
  end

  it 'test with "5 10\n1 2\n1 4\n1 5\n2 1\n2 3\n3 1\n3 2\n3 5\n4 2\n4 3\n"' do
    io = IO.popen("ruby abc218/F.rb", "w+")
    io.puts("5 10\n1 2\n1 4\n1 5\n2 1\n2 3\n3 1\n3 2\n3 5\n4 2\n4 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n1\n3\n1\n1\n1\n1\n1\n1\n1\n")
  end

  it 'test with "4 1\n1 2\n"' do
    io = IO.popen("ruby abc218/F.rb", "w+")
    io.puts("4 1\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
