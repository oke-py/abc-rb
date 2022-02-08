RSpec.describe 'test' do
  it 'test with "2 11 4\n"' do
    io = IO.popen("ruby abc120/A.rb", "w+")
    io.puts("2 11 4\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "3 9 5\n"' do
    io = IO.popen("ruby abc120/A.rb", "w+")
    io.puts("3 9 5\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "100 1 10\n"' do
    io = IO.popen("ruby abc120/A.rb", "w+")
    io.puts("100 1 10\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
