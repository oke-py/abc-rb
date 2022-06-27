RSpec.describe 'test' do
  it 'test with "4 3\n2 1\n3 1\n4 1\n2 3\n3 4\n4 2\n"' do
    io = IO.popen("ruby agc025/E.rb", "w+")
    io.puts("4 3\n2 1\n3 1\n4 1\n2 3\n3 4\n4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n2 3\n3 4\n4 2\n")
  end

  it 'test with "5 3\n1 2\n1 3\n3 4\n3 5\n2 4\n3 5\n1 5\n"' do
    io = IO.popen("ruby agc025/E.rb", "w+")
    io.puts("5 3\n1 2\n1 3\n3 4\n3 5\n2 4\n3 5\n1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n2 4\n3 5\n5 1\n")
  end

  it 'test with "6 4\n1 2\n2 3\n1 4\n4 5\n4 6\n2 4\n3 6\n5 6\n4 5\n"' do
    io = IO.popen("ruby agc025/E.rb", "w+")
    io.puts("6 4\n1 2\n2 3\n1 4\n4 5\n4 6\n2 4\n3 6\n5 6\n4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n2 4\n6 3\n5 6\n4 5\n")
  end

end
