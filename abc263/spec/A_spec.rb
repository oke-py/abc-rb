RSpec.describe 'test' do
  it 'test with "1 2 1 2 1\n"' do
    io = IO.popen("ruby abc263/A.rb", "w+")
    io.puts("1 2 1 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "12 12 11 1 2\n"' do
    io = IO.popen("ruby abc263/A.rb", "w+")
    io.puts("12 12 11 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
