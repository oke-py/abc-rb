RSpec.describe 'test' do
  it 'test with "3\n-5 1\n3 7\n-4 -2\n"' do
    io = IO.popen("ruby agc025/C.rb", "w+")
    io.puts("3\n-5 1\n3 7\n-4 -2\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

  it 'test with "3\n1 2\n3 4\n5 6\n"' do
    io = IO.popen("ruby agc025/C.rb", "w+")
    io.puts("3\n1 2\n3 4\n5 6\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

  it 'test with "5\n-2 0\n-2 0\n7 8\n9 10\n-2 -1\n"' do
    io = IO.popen("ruby agc025/C.rb", "w+")
    io.puts("5\n-2 0\n-2 0\n7 8\n9 10\n-2 -1\n")
    io.close_write
    expect(io.readlines.join).to eq("34\n")
  end

end
