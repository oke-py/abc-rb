RSpec.describe 'test' do
  it 'test with "kasaka\n"' do
    io = IO.popen("ruby abc237/C.rb", "w+")
    io.puts("kasaka\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "atcoder\n"' do
    io = IO.popen("ruby abc237/C.rb", "w+")
    io.puts("atcoder\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "php\n"' do
    io = IO.popen("ruby abc237/C.rb", "w+")
    io.puts("php\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
