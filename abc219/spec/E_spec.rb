RSpec.describe 'test' do
  it 'test with "1 0 0 0\n0 0 1 0\n0 0 0 0\n1 0 0 0\n"' do
    io = IO.popen("ruby abc219/E.rb", "w+")
    io.puts("1 0 0 0\n0 0 1 0\n0 0 0 0\n1 0 0 0\n")
    io.close_write
    expect(io.readlines.join).to eq("1272\n")
  end

  it 'test with "1 1 1 1\n1 1 1 1\n1 1 1 1\n1 1 1 1\n"' do
    io = IO.popen("ruby abc219/E.rb", "w+")
    io.puts("1 1 1 1\n1 1 1 1\n1 1 1 1\n1 1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
