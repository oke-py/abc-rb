RSpec.describe 'test' do
  it 'test with "56\n"' do
    io = IO.popen("ruby abc219/A.rb", "w+")
    io.puts("56\n")
    io.close_write
    expect(io.readlines.join).to eq("14\n")
  end

  it 'test with "32\n"' do
    io = IO.popen("ruby abc219/A.rb", "w+")
    io.puts("32\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "0\n"' do
    io = IO.popen("ruby abc219/A.rb", "w+")
    io.puts("0\n")
    io.close_write
    expect(io.readlines.join).to eq("40\n")
  end

  it 'test with "100\n"' do
    io = IO.popen("ruby abc219/A.rb", "w+")
    io.puts("100\n")
    io.close_write
    expect(io.readlines.join).to eq("expert\n")
  end

  it 'test with "39\n"' do
    io = IO.popen("ruby abc219/A.rb", "w+")
    io.puts("39\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "40\n"' do
    io = IO.popen("ruby abc219/A.rb", "w+")
    io.puts("40\n")
    io.close_write
    expect(io.readlines.join).to eq("30\n")
  end

end
