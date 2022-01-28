RSpec.describe 'test' do
  it 'test with "4 5\n2 4\n1 2\n2 3\n1 3\n3 4\n"' do
    io = IO.popen("ruby abc211/D.rb", "w+")
    io.puts("4 5\n2 4\n1 2\n2 3\n1 3\n3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "4 3\n1 3\n2 3\n2 4\n"' do
    io = IO.popen("ruby abc211/D.rb", "w+")
    io.puts("4 3\n1 3\n2 3\n2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "2 0\n"' do
    io = IO.popen("ruby abc211/D.rb", "w+")
    io.puts("2 0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "7 8\n1 3\n1 4\n2 3\n2 4\n2 5\n2 6\n5 7\n6 7\n"' do
    io = IO.popen("ruby abc211/D.rb", "w+")
    io.puts("7 8\n1 3\n1 4\n2 3\n2 4\n2 5\n2 6\n5 7\n6 7\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
