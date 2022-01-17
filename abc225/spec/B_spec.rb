RSpec.describe 'test' do
  it 'test with "5\n1 4\n2 4\n3 4\n4 5\n"' do
    io = IO.popen("ruby abc225/B.rb", "w+")
    io.puts("5\n1 4\n2 4\n3 4\n4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "4\n2 4\n1 4\n2 3\n"' do
    io = IO.popen("ruby abc225/B.rb", "w+")
    io.puts("4\n2 4\n1 4\n2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "10\n9 10\n3 10\n4 10\n8 10\n1 10\n2 10\n7 10\n6 10\n5 10\n"' do
    io = IO.popen("ruby abc225/B.rb", "w+")
    io.puts("10\n9 10\n3 10\n4 10\n8 10\n1 10\n2 10\n7 10\n6 10\n5 10\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
