RSpec.describe 'test' do
  it 'test with "3 4 2\n1 7 7 9\n9 6 3 7\n7 8 6 4\n"' do
    io = IO.popen("ruby abc210/D.rb", "w+")
    io.puts("3 4 2\n1 7 7 9\n9 6 3 7\n7 8 6 4\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "3 3 1000000000\n1000000 1000000 1\n1000000 1000000 1000000\n1 1000000 1000000\n"' do
    io = IO.popen("ruby abc210/D.rb", "w+")
    io.puts("3 3 1000000000\n1000000 1000000 1\n1000000 1000000 1000000\n1 1000000 1000000\n")
    io.close_write
    expect(io.readlines.join).to eq("1001000001\n")
  end

end
