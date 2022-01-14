RSpec.describe 'test' do
  it 'test with "4\n"' do
    io = IO.popen("ruby abc227/C.rb", "w+")
    io.puts("4\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "100\n"' do
    io = IO.popen("ruby abc227/C.rb", "w+")
    io.puts("100\n")
    io.close_write
    expect(io.readlines.join).to eq("323\n")
  end

  it 'test with "100000000000\n"' do
    io = IO.popen("ruby abc227/C.rb", "w+")
    io.puts("100000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("5745290566750\n")
  end

end
