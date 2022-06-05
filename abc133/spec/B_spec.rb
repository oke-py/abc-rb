RSpec.describe 'test' do
  it 'test with "3 2\n1 2\n5 5\n-2 8\n"' do
    io = IO.popen("ruby abc133/B.rb", "w+")
    io.puts("3 2\n1 2\n5 5\n-2 8\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "3 4\n-3 7 8 2\n-12 1 10 2\n-2 8 9 3\n"' do
    io = IO.popen("ruby abc133/B.rb", "w+")
    io.puts("3 4\n-3 7 8 2\n-12 1 10 2\n-2 8 9 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "5 1\n1\n2\n3\n4\n5\n"' do
    io = IO.popen("ruby abc133/B.rb", "w+")
    io.puts("5 1\n1\n2\n3\n4\n5\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

end
