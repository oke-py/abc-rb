RSpec.describe 'test' do
  it 'test with "3 5\n3 2\n2 4\n4 3\n"' do
    io = IO.popen("ruby abc228/H.rb", "w+")
    io.puts("3 5\n3 2\n2 4\n4 3\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

  it 'test with "1 1\n1 1\n"' do
    io = IO.popen("ruby abc228/H.rb", "w+")
    io.puts("1 1\n1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "7 7\n3 2\n1 7\n4 1\n1 8\n5 2\n9 8\n2 1\n"' do
    io = IO.popen("ruby abc228/H.rb", "w+")
    io.puts("7 7\n3 2\n1 7\n4 1\n1 8\n5 2\n9 8\n2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("29\n")
  end

end
