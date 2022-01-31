RSpec.describe 'test' do
  it 'test with "2 3\n1 3\n"' do
    io = IO.popen("ruby abc209/B.rb", "w+")
    io.puts("2 3\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "4 10\n3 3 4 4\n"' do
    io = IO.popen("ruby abc209/B.rb", "w+")
    io.puts("4 10\n3 3 4 4\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "8 30\n3 1 4 1 5 9 2 6\n"' do
    io = IO.popen("ruby abc209/B.rb", "w+")
    io.puts("8 30\n3 1 4 1 5 9 2 6\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
