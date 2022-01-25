RSpec.describe 'test' do
  it 'test with "2 3\n1 2\n1 4\n2 3\n"' do
    io = IO.popen("ruby abc217/F.rb", "w+")
    io.puts("2 3\n1 2\n1 4\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "2 2\n1 2\n3 4\n"' do
    io = IO.popen("ruby abc217/F.rb", "w+")
    io.puts("2 2\n1 2\n3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "2 2\n1 3\n2 4\n"' do
    io = IO.popen("ruby abc217/F.rb", "w+")
    io.puts("2 2\n1 3\n2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
