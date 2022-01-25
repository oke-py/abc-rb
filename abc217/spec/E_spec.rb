RSpec.describe 'test' do
  it 'test with "8\n1 4\n1 3\n1 2\n1 1\n3\n2\n1 0\n2\n"' do
    io = IO.popen("ruby abc217/E.rb", "w+")
    io.puts("8\n1 4\n1 3\n1 2\n1 1\n3\n2\n1 0\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n")
  end

  it 'test with "9\n1 5\n1 5\n1 3\n2\n3\n2\n1 6\n3\n2\n"' do
    io = IO.popen("ruby abc217/E.rb", "w+")
    io.puts("9\n1 5\n1 5\n1 3\n2\n3\n2\n1 6\n3\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n3\n5\n")
  end

end
