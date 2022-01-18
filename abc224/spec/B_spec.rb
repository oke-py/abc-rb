RSpec.describe 'test' do
  it 'test with "3 3\n2 1 4\n3 1 3\n6 4 1\n"' do
    io = IO.popen("ruby abc224/B.rb", "w+")
    io.puts("3 3\n2 1 4\n3 1 3\n6 4 1\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "2 4\n4 3 2 1\n5 6 7 8\n"' do
    io = IO.popen("ruby abc224/B.rb", "w+")
    io.puts("2 4\n4 3 2 1\n5 6 7 8\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
