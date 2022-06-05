RSpec.describe 'test' do
  it 'test with "7 3\n"' do
    io = IO.popen("ruby abc105/A.rb", "w+")
    io.puts("7 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "100 10\n"' do
    io = IO.popen("ruby abc105/A.rb", "w+")
    io.puts("100 10\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "1 1\n"' do
    io = IO.popen("ruby abc105/A.rb", "w+")
    io.puts("1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
