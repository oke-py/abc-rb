RSpec.describe 'test' do
  it 'test with "3 2\n1 2\n2 3\n"' do
    io = IO.popen("ruby abc213/G.rb", "w+")
    io.puts("3 2\n1 2\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n1\n")
  end

  it 'test with "5 6\n1 2\n1 4\n1 5\n2 3\n2 5\n3 4\n"' do
    io = IO.popen("ruby abc213/G.rb", "w+")
    io.puts("5 6\n1 2\n1 4\n1 5\n2 3\n2 5\n3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("43\n31\n37\n41\n")
  end

  it 'test with "2 0\n"' do
    io = IO.popen("ruby abc213/G.rb", "w+")
    io.puts("2 0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
