RSpec.describe 'test' do
  it 'test with "1 0\n"' do
    io = IO.popen("ruby abc214/B.rb", "w+")
    io.puts("1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "2 5\n"' do
    io = IO.popen("ruby abc214/B.rb", "w+")
    io.puts("2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "10 10\n"' do
    io = IO.popen("ruby abc214/B.rb", "w+")
    io.puts("10 10\n")
    io.close_write
    expect(io.readlines.join).to eq("213\n")
  end

  it 'test with "30 100\n"' do
    io = IO.popen("ruby abc214/B.rb", "w+")
    io.puts("30 100\n")
    io.close_write
    expect(io.readlines.join).to eq("2471\n")
  end

end
