RSpec.describe 'test' do
  it 'test with "4 5\n1 2\n3 4\n1 3\n2 3\n1 4\n"' do
    io = IO.popen("ruby abc120/D.rb", "w+")
    io.puts("4 5\n1 2\n3 4\n1 3\n2 3\n1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n0\n4\n5\n6\n")
  end

  it 'test with "6 5\n2 3\n1 2\n5 6\n3 4\n4 5\n"' do
    io = IO.popen("ruby abc120/D.rb", "w+")
    io.puts("6 5\n2 3\n1 2\n5 6\n3 4\n4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n9\n12\n14\n15\n")
  end

  it 'test with "2 1\n1 2\n"' do
    io = IO.popen("ruby abc120/D.rb", "w+")
    io.puts("2 1\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
