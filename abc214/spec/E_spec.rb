RSpec.describe 'test' do
  it 'test with "2\n3\n1 2\n2 3\n3 3\n5\n1 2\n2 3\n3 3\n1 3\n999999999 1000000000\n"' do
    io = IO.popen("ruby abc214/E.rb", "w+")
    io.puts("2\n3\n1 2\n2 3\n3 3\n5\n1 2\n2 3\n3 3\n1 3\n999999999 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nNo\n")
  end

end
