RSpec.describe 'test' do
  it 'test with "5 4 2\n2 1 1\n3 3 4\n"' do
    io = IO.popen("ruby abc047/B.rb", "w+")
    io.puts("5 4 2\n2 1 1\n3 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

  it 'test with "5 4 3\n2 1 1\n3 3 4\n1 4 2\n"' do
    io = IO.popen("ruby abc047/B.rb", "w+")
    io.puts("5 4 3\n2 1 1\n3 3 4\n1 4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10 10 5\n1 6 1\n4 1 3\n6 9 4\n9 4 2\n3 1 3\n"' do
    io = IO.popen("ruby abc047/B.rb", "w+")
    io.puts("10 10 5\n1 6 1\n4 1 3\n6 9 4\n9 4 2\n3 1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("64\n")
  end

end
