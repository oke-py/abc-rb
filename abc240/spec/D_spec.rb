RSpec.describe 'test' do
  it 'test with "5\n3 2 3 2 2\n"' do
    io = IO.popen("ruby abc240/D.rb", "w+")
    io.puts("5\n3 2 3 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n3\n4\n3\n")
  end

  it 'test with "10\n2 3 2 3 3 3 2 3 3 2\n"' do
    io = IO.popen("ruby abc240/D.rb", "w+")
    io.puts("10\n2 3 2 3 3 3 2 3 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n3\n4\n5\n3\n2\n3\n1\n0\n")
  end

end
