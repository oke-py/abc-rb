RSpec.describe 'test' do
  it 'test with "3\n1 2\n2 3\n"' do
    io = IO.popen("ruby abc223/G.rb", "w+")
    io.puts("3\n1 2\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "2\n1 2\n"' do
    io = IO.popen("ruby abc223/G.rb", "w+")
    io.puts("2\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "6\n2 5\n3 5\n1 4\n4 5\n4 6\n"' do
    io = IO.popen("ruby abc223/G.rb", "w+")
    io.puts("6\n2 5\n3 5\n1 4\n4 5\n4 6\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
