RSpec.describe 'test' do
  it 'test with "4 6\n1 3 2\n7 13 10\n18 20 13\n3 4 2\n0\n1\n2\n3\n5\n8\n"' do
    io = IO.popen("ruby abc128/E.rb", "w+")
    io.puts("4 6\n1 3 2\n7 13 10\n18 20 13\n3 4 2\n0\n1\n2\n3\n5\n8\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n2\n10\n-1\n13\n-1\n")
  end

end
