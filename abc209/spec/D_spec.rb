RSpec.describe 'test' do
  it 'test with "4 1\n1 2\n2 3\n2 4\n1 2\n"' do
    io = IO.popen("ruby abc209/D.rb", "w+")
    io.puts("4 1\n1 2\n2 3\n2 4\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("Road\n")
  end

  it 'test with "5 2\n1 2\n2 3\n3 4\n4 5\n1 3\n1 5\n"' do
    io = IO.popen("ruby abc209/D.rb", "w+")
    io.puts("5 2\n1 2\n2 3\n3 4\n4 5\n1 3\n1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("Town\nTown\n")
  end

  it 'test with "9 9\n2 3\n5 6\n4 8\n8 9\n4 5\n3 4\n1 9\n3 7\n7 9\n2 5\n2 6\n4 6\n2 4\n5 8\n7 8\n3 6\n5 6\n"' do
    io = IO.popen("ruby abc209/D.rb", "w+")
    io.puts("9 9\n2 3\n5 6\n4 8\n8 9\n4 5\n3 4\n1 9\n3 7\n7 9\n2 5\n2 6\n4 6\n2 4\n5 8\n7 8\n3 6\n5 6\n")
    io.close_write
    expect(io.readlines.join).to eq("Town\nRoad\nTown\nTown\nTown\nTown\nRoad\nRoad\nRoad\n")
  end

end
