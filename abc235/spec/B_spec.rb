RSpec.describe 'test' do
  it 'test with "5\n1 5 10 4 2\n"' do
    io = IO.popen("ruby abc235/B.rb", "w+")
    io.puts("5\n1 5 10 4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "3\n100 1000 100000\n"' do
    io = IO.popen("ruby abc235/B.rb", "w+")
    io.puts("3\n100 1000 100000\n")
    io.close_write
    expect(io.readlines.join).to eq("100000\n")
  end

  it 'test with "4\n27 1828 1828 9242\n"' do
    io = IO.popen("ruby abc235/B.rb", "w+")
    io.puts("4\n27 1828 1828 9242\n")
    io.close_write
    expect(io.readlines.join).to eq("1828\n")
  end

end
