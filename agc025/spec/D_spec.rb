RSpec.describe 'test' do
  it 'test with "2 1 2\n"' do
    io = IO.popen("ruby agc025/D.rb", "w+")
    io.puts("2 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0 0\n0 2\n2 0\n2 2\n")
  end

  it 'test with "3 1 5\n"' do
    io = IO.popen("ruby agc025/D.rb", "w+")
    io.puts("3 1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("0 0\n0 2\n0 4\n1 1\n1 3\n1 5\n2 0\n2 2\n2 4\n")
  end

end
