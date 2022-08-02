RSpec.describe 'test' do
  it 'test with "5 2 7\n"' do
    io = IO.popen("ruby abc071/A.rb", "w+")
    io.puts("5 2 7\n")
    io.close_write
    expect(io.readlines.join).to eq("B\n")
  end

  it 'test with "1 999 1000\n"' do
    io = IO.popen("ruby abc071/A.rb", "w+")
    io.puts("1 999 1000\n")
    io.close_write
    expect(io.readlines.join).to eq("A\n")
  end

end
