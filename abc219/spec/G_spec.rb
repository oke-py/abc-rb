RSpec.describe 'test' do
  it 'test with "5 6 3\n4 2\n4 3\n1 2\n2 3\n4 5\n1 5\n1 3 4\n"' do
    io = IO.popen("ruby abc219/G.rb", "w+")
    io.puts("5 6 3\n4 2\n4 3\n1 2\n2 3\n4 5\n1 5\n1 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("1 3 3 3 3\n")
  end

  it 'test with "14 14 8\n7 4\n13 9\n9 8\n4 3\n7 2\n13 8\n12 8\n11 3\n6 3\n7 14\n6 5\n1 4\n10 13\n5 2\n2 6 12 9 1 10 5 4\n"' do
    io = IO.popen("ruby abc219/G.rb", "w+")
    io.puts("14 14 8\n7 4\n13 9\n9 8\n4 3\n7 2\n13 8\n12 8\n11 3\n6 3\n7 14\n6 5\n1 4\n10 13\n5 2\n2 6 12 9 1 10 5 4\n")
    io.close_write
    expect(io.readlines.join).to eq("1 6 1 1 6 6 1 9 9 10 11 12 10 14\n")
  end

end
