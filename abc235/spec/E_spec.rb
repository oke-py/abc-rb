RSpec.describe 'test' do
  it 'test with "5 6 3\n1 2 2\n2 3 3\n1 3 6\n2 4 5\n4 5 9\n3 5 8\n1 3 1\n3 4 7\n3 5 7\n"' do
    io = IO.popen("ruby abc235/E.rb", "w+")
    io.puts("5 6 3\n1 2 2\n2 3 3\n1 3 6\n2 4 5\n4 5 9\n3 5 8\n1 3 1\n3 4 7\n3 5 7\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nNo\nYes\n")
  end

  it 'test with "2 3 2\n1 2 100\n1 2 1000000000\n1 1 1\n1 2 2\n1 1 5\n"' do
    io = IO.popen("ruby abc235/E.rb", "w+")
    io.puts("2 3 2\n1 2 100\n1 2 1000000000\n1 1 1\n1 2 2\n1 1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nNo\n")
  end

end
