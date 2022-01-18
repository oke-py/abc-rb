RSpec.describe 'test' do
  it 'test with "4\n0 1\n1 3\n1 1\n-1 -1\n"' do
    io = IO.popen("ruby abc224/C.rb", "w+")
    io.puts("4\n0 1\n1 3\n1 1\n-1 -1\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "20\n224 433\n987654321 987654321\n2 0\n6 4\n314159265 358979323\n0 0\n-123456789 123456789\n-1000000000 1000000000\n124 233\n9 -6\n-4 0\n9 5\n-7 3\n333333333 -333333333\n-9 -1\n7 -10\n-1 5\n324 633\n1000000000 -1000000000\n20 0\n"' do
    io = IO.popen("ruby abc224/C.rb", "w+")
    io.puts("20\n224 433\n987654321 987654321\n2 0\n6 4\n314159265 358979323\n0 0\n-123456789 123456789\n-1000000000 1000000000\n124 233\n9 -6\n-4 0\n9 5\n-7 3\n333333333 -333333333\n-9 -1\n7 -10\n-1 5\n324 633\n1000000000 -1000000000\n20 0\n")
    io.close_write
    expect(io.readlines.join).to eq("1124\n")
  end

end
