RSpec.describe 'test' do
  it 'test with "3 2\n2 2 5\n3 4\n1 0\n1 1\n0 1\n"' do
    io = IO.popen("ruby abc215/H.rb", "w+")
    io.puts("3 2\n2 2 5\n3 4\n1 0\n1 1\n0 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2 6\n")
  end

  it 'test with "1 1\n3\n4\n1\n"' do
    io = IO.popen("ruby abc215/H.rb", "w+")
    io.puts("1 1\n3\n4\n1\n")
    io.close_write
    expect(io.readlines.join).to eq("0 1\n")
  end

  it 'test with "1 3\n100\n30 30 30\n1 1 1\n"' do
    io = IO.popen("ruby abc215/H.rb", "w+")
    io.puts("1 3\n100\n30 30 30\n1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("11 892328666\n")
  end

end
