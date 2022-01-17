RSpec.describe 'test' do
  it 'test with "2 2\n"' do
    io = IO.popen("ruby abc226/F.rb", "w+")
    io.puts("2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "3 3\n"' do
    io = IO.popen("ruby abc226/F.rb", "w+")
    io.puts("3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("79\n")
  end

  it 'test with "50 10000\n"' do
    io = IO.popen("ruby abc226/F.rb", "w+")
    io.puts("50 10000\n")
    io.close_write
    expect(io.readlines.join).to eq("77436607\n")
  end

end
