RSpec.describe 'test' do
  it 'test with "abc atcoder\n"' do
    io = IO.popen("ruby abc217/A.rb", "w+")
    io.puts("abc atcoder\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "arc agc\n"' do
    io = IO.popen("ruby abc217/A.rb", "w+")
    io.puts("arc agc\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "a aa\n"' do
    io = IO.popen("ruby abc217/A.rb", "w+")
    io.puts("a aa\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
