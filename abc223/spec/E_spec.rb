RSpec.describe 'test' do
  it 'test with "3 3 2 2 3\n"' do
    io = IO.popen("ruby abc223/E.rb", "w+")
    io.puts("3 3 2 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "3 3 4 4 1\n"' do
    io = IO.popen("ruby abc223/E.rb", "w+")
    io.puts("3 3 4 4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "1000000000 1000000000 1000000000000000000 1000000000000000000 1000000000000000000\n"' do
    io = IO.popen("ruby abc223/E.rb", "w+")
    io.puts("1000000000 1000000000 1000000000000000000 1000000000000000000 1000000000000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
