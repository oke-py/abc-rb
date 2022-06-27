RSpec.describe 'test' do
  it 'test with "15\n"' do
    io = IO.popen("ruby agc025/A.rb", "w+")
    io.puts("15\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "100000\n"' do
    io = IO.popen("ruby agc025/A.rb", "w+")
    io.puts("100000\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

end
