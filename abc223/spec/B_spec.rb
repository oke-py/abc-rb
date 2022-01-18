RSpec.describe 'test' do
  it 'test with "aaba\n"' do
    io = IO.popen("ruby abc223/B.rb", "w+")
    io.puts("aaba\n")
    io.close_write
    expect(io.readlines.join).to eq("aaab\nbaaa\n")
  end

  it 'test with "z\n"' do
    io = IO.popen("ruby abc223/B.rb", "w+")
    io.puts("z\n")
    io.close_write
    expect(io.readlines.join).to eq("z\nz\n")
  end

  it 'test with "abracadabra\n"' do
    io = IO.popen("ruby abc223/B.rb", "w+")
    io.puts("abracadabra\n")
    io.close_write
    expect(io.readlines.join).to eq("aabracadabr\nracadabraab\n")
  end

end
