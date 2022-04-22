RSpec.describe 'test' do
  it 'test with "5 3\n1 2\n2 3\n1 3\n"' do
    io = IO.popen("ruby abc002/D.rb", "w+")
    io.puts("5 3\n1 2\n2 3\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "5 3\n1 2\n2 3\n3 4\n"' do
    io = IO.popen("ruby abc002/D.rb", "w+")
    io.puts("5 3\n1 2\n2 3\n3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "7 9\n1 2\n1 3\n2 3\n4 5\n4 6\n4 7\n5 6\n5 7\n6 7\n"' do
    io = IO.popen("ruby abc002/D.rb", "w+")
    io.puts("7 9\n1 2\n1 3\n2 3\n4 5\n4 6\n4 7\n5 6\n5 7\n6 7\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "12 0\n"' do
    io = IO.popen("ruby abc002/D.rb", "w+")
    io.puts("12 0\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end
end
