RSpec.describe 'test' do
  it 'test with "5 3\n2 2\n1 3\n2 2\n"' do
    io = IO.popen("ruby abc217/D.rb", "w+")
    io.puts("5 3\n2 2\n1 3\n2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n3\n")
  end

  it 'test with "5 3\n1 2\n1 4\n2 3\n"' do
    io = IO.popen("ruby abc217/D.rb", "w+")
    io.puts("5 3\n1 2\n1 4\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "100 10\n1 31\n2 41\n1 59\n2 26\n1 53\n2 58\n1 97\n2 93\n1 23\n2 84\n"' do
    io = IO.popen("ruby abc217/D.rb", "w+")
    io.puts("100 10\n1 31\n2 41\n1 59\n2 26\n1 53\n2 58\n1 97\n2 93\n1 23\n2 84\n")
    io.close_write
    expect(io.readlines.join).to eq("69\n31\n6\n38\n38\n")
  end

end
