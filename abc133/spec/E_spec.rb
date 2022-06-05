RSpec.describe 'test' do
  it 'test with "4 3\n1 2\n2 3\n3 4\n"' do
    io = IO.popen("ruby abc133/E.rb", "w+")
    io.puts("4 3\n1 2\n2 3\n3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "5 4\n1 2\n1 3\n1 4\n4 5\n"' do
    io = IO.popen("ruby abc133/E.rb", "w+")
    io.puts("5 4\n1 2\n1 3\n1 4\n4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("48\n")
  end

  it 'test with "16 22\n12 1\n3 1\n4 16\n7 12\n6 2\n2 15\n5 16\n14 16\n10 11\n3 10\n3 13\n8 6\n16 8\n9 12\n4 3\n"' do
    io = IO.popen("ruby abc133/E.rb", "w+")
    io.puts("16 22\n12 1\n3 1\n4 16\n7 12\n6 2\n2 15\n5 16\n14 16\n10 11\n3 10\n3 13\n8 6\n16 8\n9 12\n4 3\n")
    io.close_write
    expect(io.readlines.join).to eq("271414432\n")
  end

end
