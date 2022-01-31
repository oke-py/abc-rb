RSpec.describe 'test' do
  it 'test with "3 4 2\n"' do
    io = IO.popen("ruby abc208/F.rb", "w+")
    io.puts("3 4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("35\n")
  end

  it 'test with "0 1 2\n"' do
    io = IO.popen("ruby abc208/F.rb", "w+")
    io.puts("0 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "1000000000000000000 30 123456\n"' do
    io = IO.popen("ruby abc208/F.rb", "w+")
    io.puts("1000000000000000000 30 123456\n")
    io.close_write
    expect(io.readlines.join).to eq("297085514\n")
  end

end
