RSpec.describe 'test' do
  it 'test with "6\n2 1 2 1 1 10\n"' do
    io = IO.popen("ruby abc236/E.rb", "w+")
    io.puts("6\n2 1 2 1 1 10\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n2\n")
  end

  it 'test with "7\n3 1 4 1 5 9 2\n"' do
    io = IO.popen("ruby abc236/E.rb", "w+")
    io.puts("7\n3 1 4 1 5 9 2\n")
    io.close_write
    expect(io.readlines.join).to eq("5.250000000\n4\n")
  end

end
