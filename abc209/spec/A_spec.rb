RSpec.describe 'test' do
  it 'test with "2 4\n"' do
    io = IO.popen("ruby abc209/A.rb", "w+")
    io.puts("2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "10 100\n"' do
    io = IO.popen("ruby abc209/A.rb", "w+")
    io.puts("10 100\n")
    io.close_write
    expect(io.readlines.join).to eq("91\n")
  end

  it 'test with "3 2\n"' do
    io = IO.popen("ruby abc209/A.rb", "w+")
    io.puts("3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
