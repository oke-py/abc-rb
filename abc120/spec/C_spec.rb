RSpec.describe 'test' do
  it 'test with "0011\n"' do
    io = IO.popen("ruby abc120/C.rb", "w+")
    io.puts("0011\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "11011010001011\n"' do
    io = IO.popen("ruby abc120/C.rb", "w+")
    io.puts("11011010001011\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

  it 'test with "0\n"' do
    io = IO.popen("ruby abc120/C.rb", "w+")
    io.puts("0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
