RSpec.describe 'test' do
  it 'test with "6 7\n1 2\n1 4\n1 5\n2 4\n2 3\n3 5\n3 6\n"' do
    io = IO.popen("ruby abc229/E.rb", "w+")
    io.puts("6 7\n1 2\n1 4\n1 5\n2 4\n2 3\n3 5\n3 6\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n3\n2\n1\n0\n")
  end

  it 'test with "8 7\n7 8\n3 4\n5 6\n5 7\n5 8\n6 7\n6 8\n"' do
    io = IO.popen("ruby abc229/E.rb", "w+")
    io.puts("8 7\n7 8\n3 4\n5 6\n5 7\n5 8\n6 7\n6 8\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n2\n2\n1\n1\n1\n1\n0\n")
  end

end
