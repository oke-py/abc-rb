RSpec.describe 'test' do
  it 'test with "3\n2 1\n3 1\n"' do
    io = IO.popen("ruby abc240/E.rb", "w+")
    io.puts("3\n2 1\n3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2\n2 2\n1 1\n")
  end

  it 'test with "5\n3 4\n5 4\n1 2\n1 4\n"' do
    io = IO.popen("ruby abc240/E.rb", "w+")
    io.puts("5\n3 4\n5 4\n1 2\n1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("1 3\n3 3\n2 2\n1 2\n1 1\n")
  end

  it 'test with "5\n4 5\n3 2\n5 2\n3 1\n"' do
    io = IO.popen("ruby abc240/E.rb", "w+")
    io.puts("5\n4 5\n3 2\n5 2\n3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1 1\n1 1\n1 1\n1 1\n1 1\n")
  end

end
