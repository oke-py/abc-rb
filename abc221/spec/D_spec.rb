RSpec.describe 'test' do
  it 'test with "3\n1 2\n2 3\n3 1\n"' do
    io = IO.popen("ruby abc221/D.rb", "w+")
    io.puts("3\n1 2\n2 3\n3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("2 2 0\n")
  end

  it 'test with "2\n1000000000 1000000000\n1000000000 1000000000\n"' do
    io = IO.popen("ruby abc221/D.rb", "w+")
    io.puts("2\n1000000000 1000000000\n1000000000 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("0 1000000000\n")
  end

end
