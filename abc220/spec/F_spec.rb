RSpec.describe 'test' do
  it 'test with "3\n1 2\n2 3\n"' do
    io = IO.popen("ruby abc220/F.rb", "w+")
    io.puts("3\n1 2\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n2\n3\n")
  end

  it 'test with "2\n1 2\n"' do
    io = IO.popen("ruby abc220/F.rb", "w+")
    io.puts("2\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n1\n")
  end

  it 'test with "6\n1 6\n1 5\n1 3\n1 4\n1 2\n"' do
    io = IO.popen("ruby abc220/F.rb", "w+")
    io.puts("6\n1 6\n1 5\n1 3\n1 4\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n9\n9\n9\n9\n9\n")
  end

end
