RSpec.describe 'test' do
  it 'test with "5 5 10\n2 3\n4 10\n5 10\n6 9\n2 9\n4 8\n1 7\n3 6\n8 10\n1 8\n6\n3\n5\n8\n10\n2\n7\n"' do
    io = IO.popen("ruby abc264/E.rb", "w+")
    io.puts("5 5 10\n2 3\n4 10\n5 10\n6 9\n2 9\n4 8\n1 7\n3 6\n8 10\n1 8\n6\n3\n5\n8\n10\n2\n7\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n4\n2\n2\n2\n1\n")
  end

end
