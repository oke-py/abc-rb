RSpec.describe 'test' do
  it 'test with "RDRUL\n2\n"' do
    io = IO.popen("ruby abc219/F.rb", "w+")
    io.puts("RDRUL\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "LR\n1000000000000\n"' do
    io = IO.popen("ruby abc219/F.rb", "w+")
    io.puts("LR\n1000000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "UUURRDDDRRRUUUURDLLUURRRDDDDDDLLLLLLU\n31415926535\n"' do
    io = IO.popen("ruby abc219/F.rb", "w+")
    io.puts("UUURRDDDRRRUUUURDLLUURRRDDDDDDLLLLLLU\n31415926535\n")
    io.close_write
    expect(io.readlines.join).to eq("219911485785\n")
  end

end
