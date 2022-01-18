RSpec.describe 'test' do
  it 'test with "123\n"' do
    io = IO.popen("ruby abc221/C.rb", "w+")
    io.puts("123\n")
    io.close_write
    expect(io.readlines.join).to eq("63\n")
  end

  it 'test with "1010\n"' do
    io = IO.popen("ruby abc221/C.rb", "w+")
    io.puts("1010\n")
    io.close_write
    expect(io.readlines.join).to eq("100\n")
  end

  it 'test with "998244353\n"' do
    io = IO.popen("ruby abc221/C.rb", "w+")
    io.puts("998244353\n")
    io.close_write
    expect(io.readlines.join).to eq("939337176\n")
  end

end
