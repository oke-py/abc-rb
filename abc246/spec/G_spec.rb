RSpec.describe 'test' do
  it 'test with "7\n2 4 6 5 6 10\n1 2\n1 3\n2 4\n2 5\n5 6\n5 7\n"' do
    io = IO.popen("ruby abc246/G.rb", "w+")
    io.puts("7\n2 4 6 5 6 10\n1 2\n1 3\n2 4\n2 5\n5 6\n5 7\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "30\n29 27 79 27 30 4 93 89 44 88 70 75 96 3 78 39 97 12 53 62 32 38 84 49 93 53 26 13 25\n13 15\n14 22\n17 24\n12 3\n4 3\n5 8\n26 15\n3 2\n2 9\n4 25\n4 13\n2 10\n28 15\n6 4\n2 5\n19 9\n2 7\n2 14\n23 30\n17 2\n7 16\n21 13\n13 23\n13 20\n1 2\n6 18\n27 6\n21 29\n11 8\n"' do
    io = IO.popen("ruby abc246/G.rb", "w+")
    io.puts("30\n29 27 79 27 30 4 93 89 44 88 70 75 96 3 78 39 97 12 53 62 32 38 84 49 93 53 26 13 25\n13 15\n14 22\n17 24\n12 3\n4 3\n5 8\n26 15\n3 2\n2 9\n4 25\n4 13\n2 10\n28 15\n6 4\n2 5\n19 9\n2 7\n2 14\n23 30\n17 2\n7 16\n21 13\n13 23\n13 20\n1 2\n6 18\n27 6\n21 29\n11 8\n")
    io.close_write
    expect(io.readlines.join).to eq("70\n")
  end

end
