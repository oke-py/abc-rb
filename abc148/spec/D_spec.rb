RSpec.describe 'test' do
  it 'test with "3\n2 1 2\n"' do
    io = IO.popen("ruby abc148/D.rb", "w+")
    io.puts("3\n2 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "3\n2 2 2\n"' do
    io = IO.popen("ruby abc148/D.rb", "w+")
    io.puts("3\n2 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "10\n3 1 4 1 5 9 2 6 5 3\n"' do
    io = IO.popen("ruby abc148/D.rb", "w+")
    io.puts("10\n3 1 4 1 5 9 2 6 5 3\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "1\n1\n"' do
    io = IO.popen("ruby abc148/D.rb", "w+")
    io.puts("1\n1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
