RSpec.describe 'test' do
  it 'test with "3 70\n20 30 10\n"' do
    io = IO.popen("ruby agc027/A.rb", "w+")
    io.puts("3 70\n20 30 10\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3 10\n20 30 10\n"' do
    io = IO.popen("ruby agc027/A.rb", "w+")
    io.puts("3 10\n20 30 10\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "4 1111\n1 10 100 1000\n"' do
    io = IO.popen("ruby agc027/A.rb", "w+")
    io.puts("4 1111\n1 10 100 1000\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "2 10\n20 20\n"' do
    io = IO.popen("ruby agc027/A.rb", "w+")
    io.puts("2 10\n20 20\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
