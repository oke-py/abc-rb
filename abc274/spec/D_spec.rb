RSpec.describe 'test' do
  it 'test with "3 -1 1\n2 1 3\n"' do
    io = IO.popen("ruby abc274/D.rb", "w+")
    io.puts("3 -1 1\n2 1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "5 2 0\n2 2 2 2 2\n"' do
    io = IO.popen("ruby abc274/D.rb", "w+")
    io.puts("5 2 0\n2 2 2 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "4 5 5\n1 2 3 4\n"' do
    io = IO.popen("ruby abc274/D.rb", "w+")
    io.puts("4 5 5\n1 2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "3 2 7\n2 7 4\n"' do
    io = IO.popen("ruby abc274/D.rb", "w+")
    io.puts("3 2 7\n2 7 4\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "10 8 -7\n6 10 4 1 5 9 8 6 5 1\n"' do
    io = IO.popen("ruby abc274/D.rb", "w+")
    io.puts("10 8 -7\n6 10 4 1 5 9 8 6 5 1\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
