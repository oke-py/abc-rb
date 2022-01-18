RSpec.describe 'test' do
  it 'test with "5 2\n3 1 4 1 5\n1 3 7\n2 5 7\n"' do
    io = IO.popen("ruby abc223/H.rb", "w+")
    io.puts("5 2\n3 1 4 1 5\n1 3 7\n2 5 7\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nNo\n")
  end

  it 'test with "10 10\n8 45 56 9 38 28 33 5 15 19\n10 10 53\n3 8 60\n1 10 29\n5 7 62\n3 7 51\n8 8 52\n1 4 60\n6 8 32\n4 8 58\n5 9 2\n"' do
    io = IO.popen("ruby abc223/H.rb", "w+")
    io.puts("10 10\n8 45 56 9 38 28 33 5 15 19\n10 10 53\n3 8 60\n1 10 29\n5 7 62\n3 7 51\n8 8 52\n1 4 60\n6 8 32\n4 8 58\n5 9 2\n")
    io.close_write
    expect(io.readlines.join).to eq("No\nNo\nYes\nNo\nYes\nNo\nNo\nNo\nYes\nYes\n")
  end

end
