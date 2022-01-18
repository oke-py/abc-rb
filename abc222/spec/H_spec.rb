RSpec.describe 'test' do
  it 'test with "1\n"' do
    io = IO.popen("ruby abc222/H.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "2\n"' do
    io = IO.popen("ruby abc222/H.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "222\n"' do
    io = IO.popen("ruby abc222/H.rb", "w+")
    io.puts("222\n")
    io.close_write
    expect(io.readlines.join).to eq("987355927\n")
  end

  it 'test with "222222\n"' do
    io = IO.popen("ruby abc222/H.rb", "w+")
    io.puts("222222\n")
    io.close_write
    expect(io.readlines.join).to eq("675337738\n")
  end

end
