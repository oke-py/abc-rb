RSpec.describe 'test' do
  it 'test with "2\n"' do
    io = IO.popen("ruby abc145/A.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "100\n"' do
    io = IO.popen("ruby abc145/A.rb", "w+")
    io.puts("100\n")
    io.close_write
    expect(io.readlines.join).to eq("10000\n")
  end

end
