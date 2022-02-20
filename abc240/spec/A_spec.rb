RSpec.describe 'test' do
  it 'test with "4 5\n"' do
    io = IO.popen("ruby abc240/A.rb", "w+")
    io.puts("4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "3 5\n"' do
    io = IO.popen("ruby abc240/A.rb", "w+")
    io.puts("3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "1 10\n"' do
    io = IO.popen("ruby abc240/A.rb", "w+")
    io.puts("1 10\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
