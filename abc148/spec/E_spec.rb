RSpec.describe 'test' do
  it 'test with "12\n"' do
    io = IO.popen("ruby abc148/E.rb", "w+")
    io.puts("12\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "5\n"' do
    io = IO.popen("ruby abc148/E.rb", "w+")
    io.puts("5\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "1000000000000000000\n"' do
    io = IO.popen("ruby abc148/E.rb", "w+")
    io.puts("1000000000000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("124999999999999995\n")
  end

end
