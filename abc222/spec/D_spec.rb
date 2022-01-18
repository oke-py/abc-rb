RSpec.describe 'test' do
  it 'test with "2\n1 1\n2 3\n"' do
    io = IO.popen("ruby abc222/D.rb", "w+")
    io.puts("2\n1 1\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "3\n2 2 2\n2 2 2\n"' do
    io = IO.popen("ruby abc222/D.rb", "w+")
    io.puts("3\n2 2 2\n2 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "10\n1 2 3 4 5 6 7 8 9 10\n1 4 9 16 25 36 49 64 81 100\n"' do
    io = IO.popen("ruby abc222/D.rb", "w+")
    io.puts("10\n1 2 3 4 5 6 7 8 9 10\n1 4 9 16 25 36 49 64 81 100\n")
    io.close_write
    expect(io.readlines.join).to eq("978222082\n")
  end

end
