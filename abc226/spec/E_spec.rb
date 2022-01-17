RSpec.describe 'test' do
  it 'test with "3 3\n1 2\n1 3\n2 3\n"' do
    io = IO.popen("ruby abc226/E.rb", "w+")
    io.puts("3 3\n1 2\n1 3\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "2 1\n1 2\n"' do
    io = IO.popen("ruby abc226/E.rb", "w+")
    io.puts("2 1\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "7 7\n1 2\n2 3\n3 4\n4 2\n5 6\n6 7\n7 5\n"' do
    io = IO.popen("ruby abc226/E.rb", "w+")
    io.puts("7 7\n1 2\n2 3\n3 4\n4 2\n5 6\n6 7\n7 5\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
