RSpec.describe 'test' do
  it 'test with "0 0 3 3\n"' do
    io = IO.popen("ruby abc239/C.rb", "w+")
    io.puts("0 0 3 3\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "0 1 2 3\n"' do
    io = IO.popen("ruby abc239/C.rb", "w+")
    io.puts("0 1 2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "1000000000 1000000000 999999999 999999999\n"' do
    io = IO.popen("ruby abc239/C.rb", "w+")
    io.puts("1000000000 1000000000 999999999 999999999\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
