RSpec.describe 'test' do
  it 'test with "4 3\n3 5 6 7\n2\n5\n3\n"' do
    io = IO.popen("ruby abc205/D.rb", "w+")
    io.puts("4 3\n3 5 6 7\n2\n5\n3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n9\n4\n")
  end

  it 'test with "5 2\n1 2 3 4 5\n1\n10\n"' do
    io = IO.popen("ruby abc205/D.rb", "w+")
    io.puts("5 2\n1 2 3 4 5\n1\n10\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n15\n")
  end

end
