RSpec.describe 'test' do
  it 'test with "4 5\n"' do
    io = IO.popen("ruby abc237/F.rb", "w+")
    io.puts("4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("135\n")
  end

  it 'test with "3 4\n"' do
    io = IO.popen("ruby abc237/F.rb", "w+")
    io.puts("3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "111 3\n"' do
    io = IO.popen("ruby abc237/F.rb", "w+")
    io.puts("111 3\n")
    io.close_write
    expect(io.readlines.join).to eq("144980434\n")
  end

end
