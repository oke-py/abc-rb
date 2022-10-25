RSpec.describe 'test' do
  it 'test with "3 3\n-1 -1 -6\n"' do
    io = IO.popen("ruby abc272/E.rb", "w+")
    io.puts("3 3\n-1 -1 -6\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n2\n0\n")
  end

  it 'test with "5 6\n-2 -2 -5 -7 -15\n"' do
    io = IO.popen("ruby abc272/E.rb", "w+")
    io.puts("5 6\n-2 -2 -5 -7 -15\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n3\n2\n0\n0\n0\n")
  end

end
