RSpec.describe 'test' do
  it 'test with "5 2 1\n1 4 5 2 3\n1 3 5\n2 1 3\n"' do
    io = IO.popen("ruby abc237/G.rb", "w+")
    io.puts("5 2 1\n1 4 5 2 3\n1 3 5\n2 1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "7 3 3\n7 5 3 1 2 4 6\n1 1 7\n2 3 6\n2 5 7\n"' do
    io = IO.popen("ruby abc237/G.rb", "w+")
    io.puts("7 3 3\n7 5 3 1 2 4 6\n1 1 7\n2 3 6\n2 5 7\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

end
