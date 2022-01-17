RSpec.describe 'test' do
  it 'test with "3\n1 2\n3 6\n7 4\n"' do
    io = IO.popen("ruby abc226/D.rb", "w+")
    io.puts("3\n1 2\n3 6\n7 4\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "3\n1 2\n2 2\n4 2\n"' do
    io = IO.popen("ruby abc226/D.rb", "w+")
    io.puts("3\n1 2\n2 2\n4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "4\n0 0\n0 1000000000\n1000000000 0\n1000000000 1000000000\n"' do
    io = IO.popen("ruby abc226/D.rb", "w+")
    io.puts("4\n0 0\n0 1000000000\n1000000000 0\n1000000000 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

end
