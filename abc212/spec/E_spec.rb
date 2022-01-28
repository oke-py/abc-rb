RSpec.describe 'test' do
  it 'test with "3 1 4\n2 3\n"' do
    io = IO.popen("ruby abc212/E.rb", "w+")
    io.puts("3 1 4\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "3 3 3\n1 2\n1 3\n2 3\n"' do
    io = IO.popen("ruby abc212/E.rb", "w+")
    io.puts("3 3 3\n1 2\n1 3\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "5 3 100\n1 2\n4 5\n2 3\n"' do
    io = IO.popen("ruby abc212/E.rb", "w+")
    io.puts("5 3 100\n1 2\n4 5\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("428417047\n")
  end

end
