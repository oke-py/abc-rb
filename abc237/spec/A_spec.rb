RSpec.describe 'test' do
  it 'test with "10\n"' do
    io = IO.popen("ruby abc237/A.rb", "w+")
    io.puts("10\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "-9876543210\n"' do
    io = IO.popen("ruby abc237/A.rb", "w+")
    io.puts("-9876543210\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "483597848400000\n"' do
    io = IO.popen("ruby abc237/A.rb", "w+")
    io.puts("483597848400000\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
