RSpec.describe 'test' do
  it 'test with "10\n1 1 2 1 2 5 5 5 1\n"' do
    io = IO.popen("ruby abc264/H.rb", "w+")
    io.puts("10\n1 1 2 1 2 5 5 5 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n1\n2\n2\n4\n4\n4\n5\n7\n10\n")
  end

  it 'test with "1\n\n"' do
    io = IO.popen("ruby abc264/H.rb", "w+")
    io.puts("1\n\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "10\n1 2 3 4 5 6 7 8 9\n"' do
    io = IO.popen("ruby abc264/H.rb", "w+")
    io.puts("10\n1 2 3 4 5 6 7 8 9\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n1\n1\n1\n1\n1\n1\n1\n1\n1\n")
  end

  it 'test with "13\n1 1 1 2 2 2 3 3 3 4 4 4\n"' do
    io = IO.popen("ruby abc264/H.rb", "w+")
    io.puts("13\n1 1 1 2 2 2 3 3 3 4 4 4\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n1\n2\n4\n4\n4\n4\n4\n7\n13\n13\n19\n31\n")
  end

end
