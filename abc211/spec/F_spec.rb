RSpec.describe 'test' do
  it 'test with "3\n4\n1 2 1 4 3 4 3 2\n4\n2 5 2 3 5 3 5 5\n4\n5 6 5 5 3 5 3 6\n3\n1 4\n2 3\n4 5\n"' do
    io = IO.popen("ruby abc211/F.rb", "w+")
    io.puts("3\n4\n1 2 1 4 3 4 3 2\n4\n2 5 2 3 5 3 5 5\n4\n5 6 5 5 3 5 3 6\n3\n1 4\n2 3\n4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n2\n1\n")
  end

  it 'test with "2\n4\n12 3 12 5 0 5 0 3\n12\n1 1 1 9 10 9 10 0 4 0 4 6 6 6 6 2 8 2 8 7 2 7 2 1\n4\n2 6\n4 4\n6 3\n1 8\n"' do
    io = IO.popen("ruby abc211/F.rb", "w+")
    io.puts("2\n4\n12 3 12 5 0 5 0 3\n12\n1 1 1 9 10 9 10 0 4 0 4 6 6 6 6 2 8 2 8 7 2 7 2 1\n4\n2 6\n4 4\n6 3\n1 8\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n2\n1\n1\n")
  end

end
