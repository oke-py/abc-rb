RSpec.describe 'test' do
  it 'test with "4 4\n10 8 12 5\n1 2\n1 3\n2 3\n3 4\n"' do
    io = IO.popen("ruby abc237/E.rb", "w+")
    io.puts("4 4\n10 8 12 5\n1 2\n1 3\n2 3\n3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "2 1\n0 10\n1 2\n"' do
    io = IO.popen("ruby abc237/E.rb", "w+")
    io.puts("2 1\n0 10\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
