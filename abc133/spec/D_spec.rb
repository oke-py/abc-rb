RSpec.describe 'test' do
  it 'test with "3\n2 2 4\n"' do
    io = IO.popen("ruby abc133/D.rb", "w+")
    io.puts("3\n2 2 4\n")
    io.close_write
    expect(io.readlines.join).to eq("4 0 4\n")
  end

  it 'test with "5\n3 8 7 5 5\n"' do
    io = IO.popen("ruby abc133/D.rb", "w+")
    io.puts("5\n3 8 7 5 5\n")
    io.close_write
    expect(io.readlines.join).to eq("2 4 12 2 8\n")
  end

  it 'test with "3\n1000000000 1000000000 0\n"' do
    io = IO.popen("ruby abc133/D.rb", "w+")
    io.puts("3\n1000000000 1000000000 0\n")
    io.close_write
    expect(io.readlines.join).to eq("0 2000000000 0\n")
  end

end
