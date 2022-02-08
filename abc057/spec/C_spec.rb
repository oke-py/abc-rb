RSpec.describe 'test' do
  it 'test with "10000\n"' do
    io = IO.popen("ruby abc057/C.rb", "w+")
    io.puts("10000\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "1000003\n"' do
    io = IO.popen("ruby abc057/C.rb", "w+")
    io.puts("1000003\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "9876543210\n"' do
    io = IO.popen("ruby abc057/C.rb", "w+")
    io.puts("9876543210\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

end
