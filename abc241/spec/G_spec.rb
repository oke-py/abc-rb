RSpec.describe 'test' do
  it 'test with "4 2\n2 1\n2 3\n"' do
    io = IO.popen("ruby abc241/G.rb", "w+")
    io.puts("4 2\n2 1\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2 4\n")
  end

  it 'test with "3 3\n1 2\n2 3\n3 1\n"' do
    io = IO.popen("ruby abc241/G.rb", "w+")
    io.puts("3 3\n1 2\n2 3\n3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("\n")
  end

  it 'test with "7 9\n6 5\n1 2\n3 4\n5 3\n6 2\n1 5\n3 2\n6 4\n1 4\n"' do
    io = IO.popen("ruby abc241/G.rb", "w+")
    io.puts("7 9\n6 5\n1 2\n3 4\n5 3\n6 2\n1 5\n3 2\n6 4\n1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("1 3 6 7\n")
  end

end
