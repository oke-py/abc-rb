RSpec.describe 'test' do
  it 'test with "aab 2\n"' do
    io = IO.popen("ruby abc215/C.rb", "w+")
    io.puts("aab 2\n")
    io.close_write
    expect(io.readlines.join).to eq("aba\n")
  end

  it 'test with "baba 4\n"' do
    io = IO.popen("ruby abc215/C.rb", "w+")
    io.puts("baba 4\n")
    io.close_write
    expect(io.readlines.join).to eq("baab\n")
  end

  it 'test with "ydxwacbz 40320\n"' do
    io = IO.popen("ruby abc215/C.rb", "w+")
    io.puts("ydxwacbz 40320\n")
    io.close_write
    expect(io.readlines.join).to eq("zyxwdcba\n")
  end

end
