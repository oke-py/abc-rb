RSpec.describe 'test' do
  it 'test with "5 4 3\n5 5 0 6 3\n"' do
    io = IO.popen("ruby abc263/D.rb", "w+")
    io.puts("5 4 3\n5 5 0 6 3\n")
    io.close_write
    expect(io.readlines.join).to eq("14\n")
  end

  it 'test with "4 10 10\n1 2 3 4\n"' do
    io = IO.popen("ruby abc263/D.rb", "w+")
    io.puts("4 10 10\n1 2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "10 -5 -3\n9 -6 10 -1 2 10 -1 7 -15 5\n"' do
    io = IO.popen("ruby abc263/D.rb", "w+")
    io.puts("10 -5 -3\n9 -6 10 -1 2 10 -1 7 -15 5\n")
    io.close_write
    expect(io.readlines.join).to eq("-58\n")
  end

end
