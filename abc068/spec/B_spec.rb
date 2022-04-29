RSpec.describe 'test' do
  it 'test with "7\n"' do
    io = IO.popen("ruby abc068/B.rb", "w+")
    io.puts("7\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "32\n"' do
    io = IO.popen("ruby abc068/B.rb", "w+")
    io.puts("32\n")
    io.close_write
    expect(io.readlines.join).to eq("32\n")
  end

  it 'test with "1\n"' do
    io = IO.popen("ruby abc068/B.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "100\n"' do
    io = IO.popen("ruby abc068/B.rb", "w+")
    io.puts("100\n")
    io.close_write
    expect(io.readlines.join).to eq("64\n")
  end

end
