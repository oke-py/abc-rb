RSpec.describe 'test' do
  it 'test with "3 6\n"' do
    io = IO.popen("ruby abc264/A.rb", "w+")
    io.puts("3 6\n")
    io.close_write
    expect(io.readlines.join).to eq("code\n")
  end

  it 'test with "4 4\n"' do
    io = IO.popen("ruby abc264/A.rb", "w+")
    io.puts("4 4\n")
    io.close_write
    expect(io.readlines.join).to eq("o\n")
  end

  it 'test with "1 7\n"' do
    io = IO.popen("ruby abc264/A.rb", "w+")
    io.puts("1 7\n")
    io.close_write
    expect(io.readlines.join).to eq("atcoder\n")
  end

end
