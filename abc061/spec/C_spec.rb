RSpec.describe 'test' do
  it 'test with "3 4\n1 1\n2 2\n3 3\n"' do
    io = IO.popen("ruby abc061/C.rb", "w+")
    io.puts("3 4\n1 1\n2 2\n3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "10 500000\n1 100000\n1 100000\n1 100000\n1 100000\n1 100000\n100000 100000\n100000 100000\n100000 100000\n100000 100000\n100000 100000\n"' do
    io = IO.popen("ruby abc061/C.rb", "w+")
    io.puts("10 500000\n1 100000\n1 100000\n1 100000\n1 100000\n1 100000\n100000 100000\n100000 100000\n100000 100000\n100000 100000\n100000 100000\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
