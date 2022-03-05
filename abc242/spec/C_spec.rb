RSpec.describe 'test' do
  it 'test with "4\n"' do
    io = IO.popen("ruby abc242/C.rb", "w+")
    io.puts("4\n")
    io.close_write
    expect(io.readlines.join).to eq("203\n")
  end

  it 'test with "2\n"' do
    io = IO.popen("ruby abc242/C.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("25\n")
  end

  it 'test with "1000000\n"' do
    io = IO.popen("ruby abc242/C.rb", "w+")
    io.puts("1000000\n")
    io.close_write
    expect(io.readlines.join).to eq("248860093\n")
  end

end
