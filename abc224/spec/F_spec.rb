RSpec.describe 'test' do
  it 'test with "1234\n"' do
    io = IO.popen("ruby abc224/F.rb", "w+")
    io.puts("1234\n")
    io.close_write
    expect(io.readlines.join).to eq("1736\n")
  end

  it 'test with "1\n"' do
    io = IO.popen("ruby abc224/F.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "31415926535897932384626433832795\n"' do
    io = IO.popen("ruby abc224/F.rb", "w+")
    io.puts("31415926535897932384626433832795\n")
    io.close_write
    expect(io.readlines.join).to eq("85607943\n")
  end

end
