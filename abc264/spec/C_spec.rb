RSpec.describe 'test' do
  it 'test with "4 5\n1 2 3 4 5\n6 7 8 9 10\n11 12 13 14 15\n16 17 18 19 20\n2 3\n6 8 9\n16 18 19\n"' do
    io = IO.popen("ruby abc264/C.rb", "w+")
    io.puts("4 5\n1 2 3 4 5\n6 7 8 9 10\n11 12 13 14 15\n16 17 18 19 20\n2 3\n6 8 9\n16 18 19\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "3 3\n1 1 1\n1 1 1\n1 1 1\n1 1\n2\n"' do
    io = IO.popen("ruby abc264/C.rb", "w+")
    io.puts("3 3\n1 1 1\n1 1 1\n1 1 1\n1 1\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
