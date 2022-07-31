RSpec.describe 'test' do
  it 'test with "aaaa\n"' do
    io = IO.popen("ruby agc027/E.rb", "w+")
    io.puts("aaaa\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "aabb\n"' do
    io = IO.popen("ruby agc027/E.rb", "w+")
    io.puts("aabb\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "ababababa\n"' do
    io = IO.popen("ruby agc027/E.rb", "w+")
    io.puts("ababababa\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "babbabaaba\n"' do
    io = IO.popen("ruby agc027/E.rb", "w+")
    io.puts("babbabaaba\n")
    io.close_write
    expect(io.readlines.join).to eq("35\n")
  end

end
