RSpec.describe 'test' do
  it 'test with "3\n2 3 1\n"' do
    io = IO.popen("ruby abc217/C.rb", "w+")
    io.puts("3\n2 3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("3 1 2\n")
  end

  it 'test with "3\n1 2 3\n"' do
    io = IO.popen("ruby abc217/C.rb", "w+")
    io.puts("3\n1 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1 2 3\n")
  end

  it 'test with "5\n5 3 2 4 1\n"' do
    io = IO.popen("ruby abc217/C.rb", "w+")
    io.puts("5\n5 3 2 4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("5 3 2 4 1\n")
  end

end
