RSpec.describe 'test' do
  it 'test with "9\n"' do
    io = IO.popen("ruby abc208/B.rb", "w+")
    io.puts("9\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "119\n"' do
    io = IO.popen("ruby abc208/B.rb", "w+")
    io.puts("119\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "10000000\n"' do
    io = IO.popen("ruby abc208/B.rb", "w+")
    io.puts("10000000\n")
    io.close_write
    expect(io.readlines.join).to eq("24\n")
  end

end
