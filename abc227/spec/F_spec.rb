RSpec.describe 'test' do
  it 'test with "1 3 2\n3 4 5\n"' do
    io = IO.popen("ruby abc227/F.rb", "w+")
    io.puts("1 3 2\n3 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

  it 'test with "2 2 1\n3 2\n4 3\n"' do
    io = IO.popen("ruby abc227/F.rb", "w+")
    io.puts("2 2 1\n3 2\n4 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "3 5 3\n4 7 8 6 4\n6 7 3 10 2\n3 8 1 10 4\n"' do
    io = IO.popen("ruby abc227/F.rb", "w+")
    io.puts("3 5 3\n4 7 8 6 4\n6 7 3 10 2\n3 8 1 10 4\n")
    io.close_write
    expect(io.readlines.join).to eq("21\n")
  end

end
