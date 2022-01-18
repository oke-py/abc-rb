RSpec.describe 'test' do
  it 'test with "6 4\n"' do
    io = IO.popen("ruby abc221/A.rb", "w+")
    io.puts("6 4\n")
    io.close_write
    expect(io.readlines.join).to eq("1024\n")
  end

  it 'test with "5 5\n"' do
    io = IO.popen("ruby abc221/A.rb", "w+")
    io.puts("5 5\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
