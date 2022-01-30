RSpec.describe 'test' do
  it 'test with "4 3\n1 2 3\n4 5 6\n7 8 9\n10 11 12\n"' do
    io = IO.popen("ruby abc237/B.rb", "w+")
    io.puts("4 3\n1 2 3\n4 5 6\n7 8 9\n10 11 12\n")
    io.close_write
    expect(io.readlines.join).to eq("1 4 7 10\n2 5 8 11\n3 6 9 12\n")
  end

  it 'test with "2 2\n1000000000 1000000000\n1000000000 1000000000\n"' do
    io = IO.popen("ruby abc237/B.rb", "w+")
    io.puts("2 2\n1000000000 1000000000\n1000000000 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("1000000000 1000000000\n1000000000 1000000000\n")
  end

end
