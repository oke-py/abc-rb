RSpec.describe 'test' do
  it 'test with "3\n-2 10\n3 10\n12 10\n"' do
    io = IO.popen("ruby abc219/H.rb", "w+")
    io.puts("3\n-2 10\n3 10\n12 10\n")
    io.close_write
    expect(io.readlines.join).to eq("11\n")
  end

  it 'test with "5\n0 1000000000\n0 1000000000\n1 1000000000\n2 1000000000\n3 1000000000\n"' do
    io = IO.popen("ruby abc219/H.rb", "w+")
    io.puts("5\n0 1000000000\n0 1000000000\n1 1000000000\n2 1000000000\n3 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("4999999994\n")
  end

end
