RSpec.describe 'test' do
  it 'test with "3 1\n"' do
    io = IO.popen("ruby abc272/D.rb", "w+")
    io.puts("3 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0 1 2\n1 2 3\n2 3 4\n")
  end

  it 'test with "10 5\n"' do
    io = IO.popen("ruby abc272/D.rb", "w+")
    io.puts("10 5\n")
    io.close_write
    expect(io.readlines.join).to eq("0 3 2 3 2 3 4 5 4 5\n3 4 1 2 3 4 3 4 5 6\n2 1 4 3 2 3 4 5 4 5\n3 2 3 2 3 4 3 4 5 6\n2 3 2 3 4 3 4 5 4 5\n3 4 3 4 3 4 5 4 5 6\n4 3 4 3 4 5 4 5 6 5\n5 4 5 4 5 4 5 6 5 6\n4 5 4 5 4 5 6 5 6 7\n5 6 5 6 5 6 5 6 7 6\n")
  end

end
