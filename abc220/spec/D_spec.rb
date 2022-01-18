RSpec.describe 'test' do
  it 'test with "3\n2 7 6\n"' do
    io = IO.popen("ruby abc220/D.rb", "w+")
    io.puts("3\n2 7 6\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n0\n0\n0\n2\n1\n0\n0\n0\n0\n")
  end

  it 'test with "5\n0 1 2 3 4\n"' do
    io = IO.popen("ruby abc220/D.rb", "w+")
    io.puts("5\n0 1 2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n0\n1\n1\n4\n0\n1\n1\n0\n2\n")
  end

end
