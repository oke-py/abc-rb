RSpec.describe 'test' do
  it 'test with "321\n"' do
    io = IO.popen("ruby abc222/A.rb", "w+")
    io.puts("321\n")
    io.close_write
    expect(io.readlines.join).to eq("0321\n")
  end

  it 'test with "7777\n"' do
    io = IO.popen("ruby abc222/A.rb", "w+")
    io.puts("7777\n")
    io.close_write
    expect(io.readlines.join).to eq("7777\n")
  end

  it 'test with "1\n"' do
    io = IO.popen("ruby abc222/A.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("0001\n")
  end

end
