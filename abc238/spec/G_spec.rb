RSpec.describe 'test' do
  it 'test with "8 5\n7 49 30 1 15 8 6 10\n1 2\n2 3\n4 4\n5 8\n3 8\n"' do
    io = IO.popen("ruby abc238/G.rb", "w+")
    io.puts("8 5\n7 49 30 1 15 8 6 10\n1 2\n2 3\n4 4\n5 8\n3 8\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nNo\nYes\nNo\nYes\n")
  end

end
