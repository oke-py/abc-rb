RSpec.describe 'test' do
  it 'test with "5 4\n1 4 2 3 5\n"' do
    io = IO.popen("ruby abc146/E.rb", "w+")
    io.puts("5 4\n1 4 2 3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "8 4\n4 2 4 2 4 2 4 2\n"' do
    io = IO.popen("ruby abc146/E.rb", "w+")
    io.puts("8 4\n4 2 4 2 4 2 4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "10 7\n14 15 92 65 35 89 79 32 38 46\n"' do
    io = IO.popen("ruby abc146/E.rb", "w+")
    io.puts("10 7\n14 15 92 65 35 89 79 32 38 46\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

end
