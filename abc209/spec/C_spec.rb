RSpec.describe 'test' do
  it 'test with "2\n1 3\n"' do
    io = IO.popen("ruby abc209/C.rb", "w+")
    io.puts("2\n1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "4\n3 3 4 4\n"' do
    io = IO.popen("ruby abc209/C.rb", "w+")
    io.puts("4\n3 3 4 4\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

  it 'test with "2\n1 1\n"' do
    io = IO.popen("ruby abc209/C.rb", "w+")
    io.puts("2\n1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "10\n999999917 999999914 999999923 999999985 999999907 999999965 999999914 999999908 999999951 999999979\n"' do
    io = IO.popen("ruby abc209/C.rb", "w+")
    io.puts("10\n999999917 999999914 999999923 999999985 999999907 999999965 999999914 999999908 999999951 999999979\n")
    io.close_write
    expect(io.readlines.join).to eq("405924645\n")
  end

end
