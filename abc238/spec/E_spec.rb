RSpec.describe 'test' do
  it 'test with "3 3\n1 2\n2 3\n2 2\n"' do
    io = IO.popen("ruby abc238/E.rb", "w+")
    io.puts("3 3\n1 2\n2 3\n2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "4 3\n1 3\n1 2\n2 3\n"' do
    io = IO.popen("ruby abc238/E.rb", "w+")
    io.puts("4 3\n1 3\n1 2\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "4 4\n1 1\n2 2\n3 3\n1 4\n"' do
    io = IO.popen("ruby abc238/E.rb", "w+")
    io.puts("4 4\n1 1\n2 2\n3 3\n1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
