RSpec.describe 'test' do
  it 'test with "10\n1 2 3 2 3 1 3 1 2 3\n6\n6 10\n5 8\n3 6\n4 4\n1 6\n1 10\n"' do
    io = IO.popen("ruby abc242/G.rb", "w+")
    io.puts("10\n1 2 3 2 3 1 3 1 2 3\n6\n6 10\n5 8\n3 6\n4 4\n1 6\n1 10\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n2\n1\n0\n3\n4\n")
  end

end
