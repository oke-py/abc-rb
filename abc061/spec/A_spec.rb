RSpec.describe 'test' do
  it 'test with "1 3 2\n"' do
    io = IO.popen("ruby abc061/A.rb", "w+")
    io.puts("1 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "6 5 4\n"' do
    io = IO.popen("ruby abc061/A.rb", "w+")
    io.puts("6 5 4\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "2 2 2\n"' do
    io = IO.popen("ruby abc061/A.rb", "w+")
    io.puts("2 2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
