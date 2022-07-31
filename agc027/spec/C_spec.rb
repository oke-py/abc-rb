RSpec.describe 'test' do
  it 'test with "2 3\nAB\n1 1\n1 2\n2 2\n"' do
    io = IO.popen("ruby agc027/C.rb", "w+")
    io.puts("2 3\nAB\n1 1\n1 2\n2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "4 3\nABAB\n1 2\n2 3\n3 1\n"' do
    io = IO.popen("ruby agc027/C.rb", "w+")
    io.puts("4 3\nABAB\n1 2\n2 3\n3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "13 23\nABAAAABBBBAAB\n7 1\n10 6\n1 11\n2 10\n2 8\n2 11\n11 12\n8 3\n7 12\n11 2\n13 13\n11 9\n4 1\n9 7\n9 6\n8 13\n8 6\n4 10\n8 7\n4 3\n2 1\n8 12\n6 9\n"' do
    io = IO.popen("ruby agc027/C.rb", "w+")
    io.puts("13 23\nABAAAABBBBAAB\n7 1\n10 6\n1 11\n2 10\n2 8\n2 11\n11 12\n8 3\n7 12\n11 2\n13 13\n11 9\n4 1\n9 7\n9 6\n8 13\n8 6\n4 10\n8 7\n4 3\n2 1\n8 12\n6 9\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "13 17\nBBABBBAABABBA\n7 1\n7 9\n11 12\n3 9\n11 9\n2 1\n11 5\n12 11\n10 8\n1 11\n1 8\n7 7\n9 10\n8 8\n8 12\n6 2\n13 11\n"' do
    io = IO.popen("ruby agc027/C.rb", "w+")
    io.puts("13 17\nBBABBBAABABBA\n7 1\n7 9\n11 12\n3 9\n11 9\n2 1\n11 5\n12 11\n10 8\n1 11\n1 8\n7 7\n9 10\n8 8\n8 12\n6 2\n13 11\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
