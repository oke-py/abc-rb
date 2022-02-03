RSpec.describe 'test' do
  it 'test with "3\n1 2\n2 3\n"' do
    io = IO.popen("ruby abc146/D.rb", "w+")
    io.puts("3\n1 2\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n1\n2\n")
  end

  it 'test with "8\n1 2\n2 3\n2 4\n2 5\n4 7\n5 6\n6 8\n"' do
    io = IO.popen("ruby abc146/D.rb", "w+")
    io.puts("8\n1 2\n2 3\n2 4\n2 5\n4 7\n5 6\n6 8\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n1\n2\n3\n4\n1\n1\n2\n")
  end

  it 'test with "6\n1 2\n1 3\n1 4\n1 5\n1 6\n"' do
    io = IO.popen("ruby abc146/D.rb", "w+")
    io.puts("6\n1 2\n1 3\n1 4\n1 5\n1 6\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n1\n2\n3\n4\n5\n")
  end

end
