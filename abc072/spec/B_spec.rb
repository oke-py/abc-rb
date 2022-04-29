RSpec.describe 'test' do
  it 'test with "atcoder\n"' do
    io = IO.popen("ruby abc072/B.rb", "w+")
    io.puts("atcoder\n")
    io.close_write
    expect(io.readlines.join).to eq("acdr\n")
  end

  it 'test with "aaaa\n"' do
    io = IO.popen("ruby abc072/B.rb", "w+")
    io.puts("aaaa\n")
    io.close_write
    expect(io.readlines.join).to eq("aa\n")
  end

  it 'test with "z\n"' do
    io = IO.popen("ruby abc072/B.rb", "w+")
    io.puts("z\n")
    io.close_write
    expect(io.readlines.join).to eq("z\n")
  end

  it 'test with "fukuokayamaguchi\n"' do
    io = IO.popen("ruby abc072/B.rb", "w+")
    io.puts("fukuokayamaguchi\n")
    io.close_write
    expect(io.readlines.join).to eq("fkoaaauh\n")
  end

end
