RSpec.describe 'test' do
  it 'test with "abc\n"' do
    io = IO.popen("ruby abc214/F.rb", "w+")
    io.puts("abc\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "aa\n"' do
    io = IO.popen("ruby abc214/F.rb", "w+")
    io.puts("aa\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "acba\n"' do
    io = IO.popen("ruby abc214/F.rb", "w+")
    io.puts("acba\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "chokudai\n"' do
    io = IO.popen("ruby abc214/F.rb", "w+")
    io.puts("chokudai\n")
    io.close_write
    expect(io.readlines.join).to eq("54\n")
  end

end
