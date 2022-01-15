RSpec.describe 'test' do
  it 'test with "2 2 1 1\n"' do
    io = IO.popen("ruby abc235/G.rb", "w+")
    io.puts("2 2 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("21\n")
  end

  it 'test with "2 0 0 0\n"' do
    io = IO.popen("ruby abc235/G.rb", "w+")
    io.puts("2 0 0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "2 0 2 2\n"' do
    io = IO.popen("ruby abc235/G.rb", "w+")
    io.puts("2 0 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

  it 'test with "100 12 34 56\n"' do
    io = IO.popen("ruby abc235/G.rb", "w+")
    io.puts("100 12 34 56\n")
    io.close_write
    expect(io.readlines.join).to eq("769445780\n")
  end

  it 'test with "5000000 2521993 2967363 3802088\n"' do
    io = IO.popen("ruby abc235/G.rb", "w+")
    io.puts("5000000 2521993 2967363 3802088\n")
    io.close_write
    expect(io.readlines.join).to eq("264705492\n")
  end

end
