RSpec.describe 'test' do
  it 'test with "3\n1 2 2\n2 3 3\n1 2 3\n"' do
    io = IO.popen("ruby abc222/F.rb", "w+")
    io.puts("3\n1 2 2\n2 3 3\n1 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n6\n6\n")
  end

  it 'test with "6\n1 2 3\n1 3 1\n1 4 4\n1 5 1\n1 6 5\n9 2 6 5 3 100\n"' do
    io = IO.popen("ruby abc222/F.rb", "w+")
    io.puts("6\n1 2 3\n1 3 1\n1 4 4\n1 5 1\n1 6 5\n9 2 6 5 3 100\n")
    io.close_write
    expect(io.readlines.join).to eq("105\n108\n106\n109\n106\n14\n")
  end

  it 'test with "6\n1 2 1000000000\n2 3 1000000000\n3 4 1000000000\n4 5 1000000000\n5 6 1000000000\n1 2 3 4 5 6\n"' do
    io = IO.popen("ruby abc222/F.rb", "w+")
    io.puts("6\n1 2 1000000000\n2 3 1000000000\n3 4 1000000000\n4 5 1000000000\n5 6 1000000000\n1 2 3 4 5 6\n")
    io.close_write
    expect(io.readlines.join).to eq("5000000006\n4000000006\n3000000006\n3000000001\n4000000001\n5000000001\n")
  end

end
