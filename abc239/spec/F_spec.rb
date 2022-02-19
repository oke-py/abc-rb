RSpec.describe 'test' do
  it 'test with "6 2\n1 2 1 2 2 2\n2 3\n1 4\n"' do
    io = IO.popen("ruby abc239/F.rb", "w+")
    io.puts("6 2\n1 2 1 2 2 2\n2 3\n1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("6 2\n5 6\n4 5\n")
  end

  it 'test with "5 1\n1 1 1 1 4\n2 3\n"' do
    io = IO.popen("ruby abc239/F.rb", "w+")
    io.puts("5 1\n1 1 1 1 4\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

  it 'test with "4 0\n3 3 3 3\n"' do
    io = IO.popen("ruby abc239/F.rb", "w+")
    io.puts("4 0\n3 3 3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
