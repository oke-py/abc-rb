RSpec.describe 'test' do
  it 'test with "3 2 1\n1 2 1\n2 3 2\n"' do
    io = IO.popen("ruby abc235/H.rb", "w+")
    io.puts("3 2 1\n1 2 1\n2 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "5 0 2\n"' do
    io = IO.popen("ruby abc235/H.rb", "w+")
    io.puts("5 0 2\n")
    io.close_write
    expect(io.readlines.join).to eq("16\n")
  end

  it 'test with "6 8 2\n1 2 1\n2 3 2\n3 4 3\n4 5 1\n5 6 2\n6 1 3\n1 2 10\n1 1 100\n"' do
    io = IO.popen("ruby abc235/H.rb", "w+")
    io.puts("6 8 2\n1 2 1\n2 3 2\n3 4 3\n4 5 1\n5 6 2\n6 1 3\n1 2 10\n1 1 100\n")
    io.close_write
    expect(io.readlines.join).to eq("40\n")
  end

end
