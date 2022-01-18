RSpec.describe 'test' do
  it 'test with "5 3\n(())(\n2 1 4\n2 1 2\n2 4 5\n"' do
    io = IO.popen("ruby abc223/F.rb", "w+")
    io.puts("5 3\n(())(\n2 1 4\n2 1 2\n2 4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nNo\nNo\n")
  end

  it 'test with "5 3\n(())(\n2 1 4\n1 1 4\n2 1 4\n"' do
    io = IO.popen("ruby abc223/F.rb", "w+")
    io.puts("5 3\n(())(\n2 1 4\n1 1 4\n2 1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nNo\n")
  end

  it 'test with "8 8\n(()(()))\n2 2 7\n2 2 8\n1 2 5\n2 3 4\n1 3 4\n1 3 5\n1 1 4\n1 6 8\n"' do
    io = IO.popen("ruby abc223/F.rb", "w+")
    io.puts("8 8\n(()(()))\n2 2 7\n2 2 8\n1 2 5\n2 3 4\n1 3 4\n1 3 5\n1 1 4\n1 6 8\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\nNo\nNo\n")
  end

end
