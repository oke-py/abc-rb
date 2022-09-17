RSpec.describe 'test' do
  it 'test with "1 2 5 3\n"' do
    io = IO.popen("ruby abc269/A.rb", "w+")
    io.puts("1 2 5 3\n")
    io.close_write
    expect(io.readlines.join).to eq("6\nTakahashi\n")
  end

  it 'test with "10 -20 30 -40\n"' do
    io = IO.popen("ruby abc269/A.rb", "w+")
    io.puts("10 -20 30 -40\n")
    io.close_write
    expect(io.readlines.join).to eq("-700\nTakahashi\n")
  end

  it 'test with "100 100 100 -100\n"' do
    io = IO.popen("ruby abc269/A.rb", "w+")
    io.puts("100 100 100 -100\n")
    io.close_write
    expect(io.readlines.join).to eq("40000\nTakahashi\n")
  end

end
