RSpec.describe 'test' do
  it 'test with "abc\nacb\n"' do
    io = IO.popen("ruby abc221/B.rb", "w+")
    io.puts("abc\nacb\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "aabb\nbbaa\n"' do
    io = IO.popen("ruby abc221/B.rb", "w+")
    io.puts("aabb\nbbaa\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "abcde\nabcde\n"' do
    io = IO.popen("ruby abc221/B.rb", "w+")
    io.puts("abcde\nabcde\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
