RSpec.describe 'test' do
  it 'test with "16\n"' do
    io = IO.popen("ruby abc238/C.rb", "w+")
    io.puts("16\n")
    io.close_write
    expect(io.readlines.join).to eq("73\n")
  end

  it 'test with "238\n"' do
    io = IO.popen("ruby abc238/C.rb", "w+")
    io.puts("238\n")
    io.close_write
    expect(io.readlines.join).to eq("13870\n")
  end

  it 'test with "999999999999999999\n"' do
    io = IO.popen("ruby abc238/C.rb", "w+")
    io.puts("999999999999999999\n")
    io.close_write
    expect(io.readlines.join).to eq("762062362\n")
  end

end
