RSpec.describe 'test' do
  it 'test with "7 14\n1 6 3\n1 4 1\n1 5 2\n1 2 7\n1 3 5\n3 2\n3 4\n3 6\n2 3 5\n2 4 1\n1 1 5\n3 2\n3 4\n3 6\n"' do
    io = IO.popen("ruby abc225/D.rb", "w+")
    io.puts("7 14\n1 6 3\n1 4 1\n1 5 2\n1 2 7\n1 3 5\n3 2\n3 4\n3 6\n2 3 5\n2 4 1\n1 1 5\n3 2\n3 4\n3 6\n")
    io.close_write
    expect(io.readlines.join).to eq("5 6 3 5 2 7\n2 4 1\n5 6 3 5 2 7\n4 1 5 2 7\n1 4\n2 6 3\n")
  end

end