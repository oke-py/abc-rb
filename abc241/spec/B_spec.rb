RSpec.describe 'test' do
  it 'test with "3 2\n1 1 3\n3 1\n"' do
    io = IO.popen("ruby abc241/B.rb", "w+")
    io.puts("3 2\n1 1 3\n3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "1 1\n1000000000\n1\n"' do
    io = IO.popen("ruby abc241/B.rb", "w+")
    io.puts("1 1\n1000000000\n1\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "5 2\n1 2 3 4 5\n5 5\n"' do
    io = IO.popen("ruby abc241/B.rb", "w+")
    io.puts("5 2\n1 2 3 4 5\n5 5\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
