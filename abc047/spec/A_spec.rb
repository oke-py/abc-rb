RSpec.describe 'test' do
  it 'test with "10 30 20\n"' do
    io = IO.popen("ruby abc047/A.rb", "w+")
    io.puts("10 30 20\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "30 30 100\n"' do
    io = IO.popen("ruby abc047/A.rb", "w+")
    io.puts("30 30 100\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "56 25 31\n"' do
    io = IO.popen("ruby abc047/A.rb", "w+")
    io.puts("56 25 31\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
