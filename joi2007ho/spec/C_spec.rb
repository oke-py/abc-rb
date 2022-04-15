RSpec.describe 'test' do
  it 'test with "10\n9 4\n4 3\n1 1\n4 2\n2 4\n5 8\n4 0\n5 3\n0 5\n5 2\n"' do
    io = IO.popen("ruby joi2007ho/C.rb", "w+")
    io.puts("10\n9 4\n4 3\n1 1\n4 2\n2 4\n5 8\n4 0\n5 3\n0 5\n5 2\n\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

end
