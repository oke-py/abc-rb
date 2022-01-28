RSpec.describe 'test' do
  it 'test with "3\n2 5\n10 9\n4 8\n"' do
    io = IO.popen("ruby abc210/F.rb", "w+")
    io.puts("3\n2 5\n10 9\n4 8\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "2\n10 100\n1000 10000\n"' do
    io = IO.popen("ruby abc210/F.rb", "w+")
    io.puts("2\n10 100\n1000 10000\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
