RSpec.describe 'test' do
  it 'test with "-9\n"' do
    io = IO.popen("ruby abc105/C.rb", "w+")
    io.puts("-9\n")
    io.close_write
    expect(io.readlines.join).to eq("1011\n")
  end

  it 'test with "123456789\n"' do
    io = IO.popen("ruby abc105/C.rb", "w+")
    io.puts("123456789\n")
    io.close_write
    expect(io.readlines.join).to eq("11000101011001101110100010101\n")
  end

  it 'test with "0\n"' do
    io = IO.popen("ruby abc105/C.rb", "w+")
    io.puts("0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
