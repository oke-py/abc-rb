RSpec.describe 'test' do
  it 'test with "2\nip cc\n"' do
    io = IO.popen("ruby abc148/B.rb", "w+")
    io.puts("2\nip cc\n")
    io.close_write
    expect(io.readlines.join).to eq("icpc\n")
  end

  it 'test with "8\nhmhmnknk uuuuuuuu\n"' do
    io = IO.popen("ruby abc148/B.rb", "w+")
    io.puts("8\nhmhmnknk uuuuuuuu\n")
    io.close_write
    expect(io.readlines.join).to eq("humuhumunukunuku\n")
  end

  it 'test with "5\naaaaa aaaaa\n"' do
    io = IO.popen("ruby abc148/B.rb", "w+")
    io.puts("5\naaaaa aaaaa\n")
    io.close_write
    expect(io.readlines.join).to eq("aaaaaaaaaa\n")
  end

end
