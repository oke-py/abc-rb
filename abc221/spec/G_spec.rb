RSpec.describe 'test' do
  it 'test with "3 2 -2\n1 2 3\n"' do
    io = IO.popen("ruby abc221/G.rb", "w+")
    io.puts("3 2 -2\n1 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nLDR\n")
  end

  it 'test with "2 1 0\n1 6\n"' do
    io = IO.popen("ruby abc221/G.rb", "w+")
    io.puts("2 1 0\n1 6\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "5 6 7\n1 3 5 7 9\n"' do
    io = IO.popen("ruby abc221/G.rb", "w+")
    io.puts("5 6 7\n1 3 5 7 9\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nLRLUR\n")
  end

end
