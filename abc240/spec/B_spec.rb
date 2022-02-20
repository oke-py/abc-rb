RSpec.describe 'test' do
  it 'test with "6\n1 4 1 2 2 1\n"' do
    io = IO.popen("ruby abc240/B.rb", "w+")
    io.puts("6\n1 4 1 2 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "1\n1\n"' do
    io = IO.popen("ruby abc240/B.rb", "w+")
    io.puts("1\n1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "11\n3 1 4 1 5 9 2 6 5 3 5\n"' do
    io = IO.popen("ruby abc240/B.rb", "w+")
    io.puts("11\n3 1 4 1 5 9 2 6 5 3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

end
