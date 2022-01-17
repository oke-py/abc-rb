RSpec.describe 'test' do
  it 'test with "3\n3 0\n5 1 1\n7 1 1\n"' do
    io = IO.popen("ruby abc226/C.rb", "w+")
    io.puts("3\n3 0\n5 1 1\n7 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "5\n1000000000 0\n1000000000 0\n1000000000 0\n1000000000 0\n1000000000 4 1 2 3 4\n"' do
    io = IO.popen("ruby abc226/C.rb", "w+")
    io.puts("5\n1000000000 0\n1000000000 0\n1000000000 0\n1000000000 0\n1000000000 4 1 2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("5000000000\n")
  end

end
