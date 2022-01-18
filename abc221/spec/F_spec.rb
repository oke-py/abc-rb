RSpec.describe 'test' do
  it 'test with "5\n1 2\n1 3\n1 4\n4 5\n"' do
    io = IO.popen("ruby abc221/F.rb", "w+")
    io.puts("5\n1 2\n1 3\n1 4\n4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "4\n1 2\n1 3\n1 4\n"' do
    io = IO.popen("ruby abc221/F.rb", "w+")
    io.puts("4\n1 2\n1 3\n1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
