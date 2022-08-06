RSpec.describe 'test' do
  it 'test with "3\n1 2\n"' do
    io = IO.popen("ruby abc263/B.rb", "w+")
    io.puts("3\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "10\n1 2 3 4 5 6 7 8 9\n"' do
    io = IO.popen("ruby abc263/B.rb", "w+")
    io.puts("10\n1 2 3 4 5 6 7 8 9\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

end
