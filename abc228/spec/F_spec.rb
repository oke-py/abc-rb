RSpec.describe 'test' do
  it 'test with "3 4 2 3 3 1\n3 1 4 1\n5 9 2 6\n5 3 5 8\n"' do
    io = IO.popen("ruby abc228/F.rb", "w+")
    io.puts("3 4 2 3 3 1\n3 1 4 1\n5 9 2 6\n5 3 5 8\n")
    io.close_write
    expect(io.readlines.join).to eq("19\n")
  end

  it 'test with "3 4 2 3 3 4\n3 1 4 1\n5 9 2 6\n5 3 5 8\n"' do
    io = IO.popen("ruby abc228/F.rb", "w+")
    io.puts("3 4 2 3 3 4\n3 1 4 1\n5 9 2 6\n5 3 5 8\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10 10 3 7 2 3\n9 7 19 7 10 4 13 9 4 8\n10 15 16 3 18 19 17 12 13 2\n12 18 4 9 13 13 6 13 5 2\n16 12 2 14 18 17 14 7 8 12\n12 13 17 12 14 15 19 7 13 15\n5 2 16 10 4 6 1 2 7 8\n10 14 14 10 9 13 11 4 9 19\n16 12 3 19 19 6 2 19 14 20\n15 3 19 19 2 10 1 4 3 15\n13 20 5 6 19 1 7 17 10 19\n"' do
    io = IO.popen("ruby abc228/F.rb", "w+")
    io.puts("10 10 3 7 2 3\n9 7 19 7 10 4 13 9 4 8\n10 15 16 3 18 19 17 12 13 2\n12 18 4 9 13 13 6 13 5 2\n16 12 2 14 18 17 14 7 8 12\n12 13 17 12 14 15 19 7 13 15\n5 2 16 10 4 6 1 2 7 8\n10 14 14 10 9 13 11 4 9 19\n16 12 3 19 19 6 2 19 14 20\n15 3 19 19 2 10 1 4 3 15\n13 20 5 6 19 1 7 17 10 19\n")
    io.close_write
    expect(io.readlines.join).to eq("180\n")
  end

end
