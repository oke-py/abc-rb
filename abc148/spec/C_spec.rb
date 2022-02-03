RSpec.describe 'test' do
  it 'test with "2 3\n"' do
    io = IO.popen("ruby abc148/C.rb", "w+")
    io.puts("2 3\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "123 456\n"' do
    io = IO.popen("ruby abc148/C.rb", "w+")
    io.puts("123 456\n")
    io.close_write
    expect(io.readlines.join).to eq("18696\n")
  end

  it 'test with "100000 99999\n"' do
    io = IO.popen("ruby abc148/C.rb", "w+")
    io.puts("100000 99999\n")
    io.close_write
    expect(io.readlines.join).to eq("9999900000\n")
  end

end
