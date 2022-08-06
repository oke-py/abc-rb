RSpec.describe 'test' do
  it 'test with "2\n2 5\n6 5\n2 1\n7 9\n"' do
    io = IO.popen("ruby abc263/F.rb", "w+")
    io.puts("2\n2 5\n6 5\n2 1\n7 9\n")
    io.close_write
    expect(io.readlines.join).to eq("15\n")
  end

  it 'test with "3\n1 1 1\n1 1 1\n1 1 1\n1 1 1\n1 1 1\n1 1 1\n1 1 1\n1 1 1\n"' do
    io = IO.popen("ruby abc263/F.rb", "w+")
    io.puts("3\n1 1 1\n1 1 1\n1 1 1\n1 1 1\n1 1 1\n1 1 1\n1 1 1\n1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
