RSpec.describe 'test' do
  it 'test with "5\n1 3\n1 5\n3\n2 2\n3\n"' do
    io = IO.popen("ruby abc212/D.rb", "w+")
    io.puts("5\n1 3\n1 5\n3\n2 2\n3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n7\n")
  end

  it 'test with "6\n1 1000000000\n2 1000000000\n2 1000000000\n2 1000000000\n2 1000000000\n3\n"' do
    io = IO.popen("ruby abc212/D.rb", "w+")
    io.puts("6\n1 1000000000\n2 1000000000\n2 1000000000\n2 1000000000\n2 1000000000\n3\n")
    io.close_write
    expect(io.readlines.join).to eq("5000000000\n")
  end

end
