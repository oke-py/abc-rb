RSpec.describe 'test' do
  it 'test with "2\nABCXYZ\n"' do
    io = IO.popen("ruby abc146/B.rb", "w+")
    io.puts("2\nABCXYZ\n")
    io.close_write
    expect(io.readlines.join).to eq("CDEZAB\n")
  end

  it 'test with "0\nABCXYZ\n"' do
    io = IO.popen("ruby abc146/B.rb", "w+")
    io.puts("0\nABCXYZ\n")
    io.close_write
    expect(io.readlines.join).to eq("ABCXYZ\n")
  end

  it 'test with "13\nABCDEFGHIJKLMNOPQRSTUVWXYZ\n"' do
    io = IO.popen("ruby abc146/B.rb", "w+")
    io.puts("13\nABCDEFGHIJKLMNOPQRSTUVWXYZ\n")
    io.close_write
    expect(io.readlines.join).to eq("NOPQRSTUVWXYZABCDEFGHIJKLM\n")
  end

end
