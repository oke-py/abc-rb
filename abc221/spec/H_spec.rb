RSpec.describe 'test' do
  it 'test with "4 2\n"' do
    io = IO.popen("ruby abc221/H.rb", "w+")
    io.puts("4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n1\n0\n")
  end

  it 'test with "7 7\n"' do
    io = IO.popen("ruby abc221/H.rb", "w+")
    io.puts("7 7\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n3\n4\n3\n2\n1\n1\n")
  end

end
