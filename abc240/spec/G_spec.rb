RSpec.describe 'test' do
  it 'test with "3 2 0 -1\n"' do
    io = IO.popen("ruby abc240/G.rb", "w+")
    io.puts("3 2 0 -1\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "1 0 0 0\n"' do
    io = IO.popen("ruby abc240/G.rb", "w+")
    io.puts("1 0 0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "314 15 92 65\n"' do
    io = IO.popen("ruby abc240/G.rb", "w+")
    io.puts("314 15 92 65\n")
    io.close_write
    expect(io.readlines.join).to eq("106580952\n")
  end

end
