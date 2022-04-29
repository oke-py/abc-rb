RSpec.describe 'test' do
  it 'test with "3\n"' do
    io = IO.popen("ruby abc102/A.rb", "w+")
    io.puts("3\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "10\n"' do
    io = IO.popen("ruby abc102/A.rb", "w+")
    io.puts("10\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "999999999\n"' do
    io = IO.popen("ruby abc102/A.rb", "w+")
    io.puts("999999999\n")
    io.close_write
    expect(io.readlines.join).to eq("1999999998\n")
  end

end
