RSpec.describe 'test' do
  it 'test with "2 2\n2 1 2\n1 2\n0 1\n"' do
    io = IO.popen("ruby abc128/C.rb", "w+")
    io.puts("2 2\n2 1 2\n1 2\n0 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "2 3\n2 1 2\n1 1\n1 2\n0 0 1\n"' do
    io = IO.popen("ruby abc128/C.rb", "w+")
    io.puts("2 3\n2 1 2\n1 1\n1 2\n0 0 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "5 2\n3 1 2 5\n2 2 3\n1 0\n"' do
    io = IO.popen("ruby abc128/C.rb", "w+")
    io.puts("5 2\n3 1 2 5\n2 2 3\n1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

end
