RSpec.describe 'test' do
  it 'test with "3\n5 1 0 0 1\n0 0 0 2 1\n0 3 0 0 0\n0 0 2 0 0\n10000000000000000 0 0 0 0\n0 0 0 0 2000000000000000\n"' do
    io = IO.popen("ruby abc226/G.rb", "w+")
    io.puts("3\n5 1 0 0 1\n0 0 0 2 1\n0 3 0 0 0\n0 0 2 0 0\n10000000000000000 0 0 0 0\n0 0 0 0 2000000000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nNo\nYes\n")
  end

end
