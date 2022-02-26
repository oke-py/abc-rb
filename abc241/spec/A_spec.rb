RSpec.describe 'test' do
  it 'test with "9 0 1 2 3 4 5 6 7 8\n"' do
    io = IO.popen("ruby abc241/A.rb", "w+")
    io.puts("9 0 1 2 3 4 5 6 7 8\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "4 8 8 8 0 8 8 8 8 8\n"' do
    io = IO.popen("ruby abc241/A.rb", "w+")
    io.puts("4 8 8 8 0 8 8 8 8 8\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "0 0 0 0 0 0 0 0 0 0\n"' do
    io = IO.popen("ruby abc241/A.rb", "w+")
    io.puts("0 0 0 0 0 0 0 0 0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
