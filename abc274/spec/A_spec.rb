RSpec.describe 'test' do
  it 'test with "7 4\n"' do
    io = IO.popen("ruby abc274/A.rb", "w+")
    io.puts("7 4\n")
    io.close_write
    expect(io.readlines.join).to eq("0.571\n")
  end

  it 'test with "7 3\n"' do
    io = IO.popen("ruby abc274/A.rb", "w+")
    io.puts("7 3\n")
    io.close_write
    expect(io.readlines.join).to eq("0.429\n")
  end

  it 'test with "2 1\n"' do
    io = IO.popen("ruby abc274/A.rb", "w+")
    io.puts("2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0.500\n")
  end

  it 'test with "10 10\n"' do
    io = IO.popen("ruby abc274/A.rb", "w+")
    io.puts("10 10\n")
    io.close_write
    expect(io.readlines.join).to eq("1.000\n")
  end

  it 'test with "1 0\n"' do
    io = IO.popen("ruby abc274/A.rb", "w+")
    io.puts("1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("0.000\n")
  end

end
