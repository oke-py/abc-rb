RSpec.describe 'test' do
  it 'test with "2 3 1\n"' do
    io = IO.popen("ruby abc205/E.rb", "w+")
    io.puts("2 3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

  it 'test with "1 0 0\n"' do
    io = IO.popen("ruby abc205/E.rb", "w+")
    io.puts("1 0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "1000000 1000000 1000000\n"' do
    io = IO.popen("ruby abc205/E.rb", "w+")
    io.puts("1000000 1000000 1000000\n")
    io.close_write
    expect(io.readlines.join).to eq("192151600\n")
  end

end
