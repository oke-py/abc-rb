RSpec.describe 'test' do
  it 'test with "2\n3\n1 2\n2 3\n1 3\n3 2\n6\n1 2\n2 3\n3 4\n4 5\n5 6\n1 2\n2 4\n4 3\n3 5\n5 6\n"' do
    io = IO.popen("ruby agc027/F.rb", "w+")
    io.puts("2\n3\n1 2\n2 3\n1 3\n3 2\n6\n1 2\n2 3\n3 4\n4 5\n5 6\n1 2\n2 4\n4 3\n3 5\n5 6\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n-1\n")
  end

  it 'test with "3\n8\n2 7\n4 8\n8 6\n7 1\n7 3\n5 7\n7 8\n4 2\n5 2\n1 2\n8 1\n3 2\n2 6\n2 7\n4\n1 2\n2 3\n3 4\n3 4\n2 1\n3 2\n9\n5 3\n4 3\n9 3\n6 8\n2 3\n1 3\n3 8\n1 7\n4 1\n2 8\n9 6\n3 6\n3 5\n1 8\n9 7\n1 6\n"' do
    io = IO.popen("ruby agc027/F.rb", "w+")
    io.puts("3\n8\n2 7\n4 8\n8 6\n7 1\n7 3\n5 7\n7 8\n4 2\n5 2\n1 2\n8 1\n3 2\n2 6\n2 7\n4\n1 2\n2 3\n3 4\n3 4\n2 1\n3 2\n9\n5 3\n4 3\n9 3\n6 8\n2 3\n1 3\n3 8\n1 7\n4 1\n2 8\n9 6\n3 6\n3 5\n1 8\n9 7\n1 6\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n0\n7\n")
  end

end
