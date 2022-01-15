RSpec.describe 'test' do
  it 'test with "6 8\n1 1 2 3 1 2\n1 1\n1 2\n1 3\n1 4\n2 1\n2 2\n2 3\n4 1\n"' do
    io = IO.popen("ruby abc235/C.rb", "w+")
    io.puts("6 8\n1 1 2 3 1 2\n1 1\n1 2\n1 3\n1 4\n2 1\n2 2\n2 3\n4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n5\n-1\n3\n6\n-1\n-1\n")
  end

  it 'test with "3 2\n0 1000000000 999999999\n1000000000 1\n123456789 1\n"' do
    io = IO.popen("ruby abc235/C.rb", "w+")
    io.puts("3 2\n0 1000000000 999999999\n1000000000 1\n123456789 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n-1\n")
  end

end
