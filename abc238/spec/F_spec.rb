RSpec.describe 'test' do
  it 'test with "4 2\n2 4 3 1\n2 1 4 3\n"' do
    io = IO.popen("ruby abc238/F.rb", "w+")
    io.puts("4 2\n2 4 3 1\n2 1 4 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "33 16\n1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33\n33 32 31 30 29 28 27 26 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1\n"' do
    io = IO.popen("ruby abc238/F.rb", "w+")
    io.puts("33 16\n1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31 32 33\n33 32 31 30 29 28 27 26 25 24 23 22 21 20 19 18 17 16 15 14 13 12 11 10 9 8 7 6 5 4 3 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("168558757\n")
  end

  it 'test with "15 7\n4 9 7 5 6 13 2 11 3 1 12 14 15 10 8\n4 14 9 12 7 15 1 2 8 11 3 5 13 6 10\n"' do
    io = IO.popen("ruby abc238/F.rb", "w+")
    io.puts("15 7\n4 9 7 5 6 13 2 11 3 1 12 14 15 10 8\n4 14 9 12 7 15 1 2 8 11 3 5 13 6 10\n")
    io.close_write
    expect(io.readlines.join).to eq("23\n")
  end

end
