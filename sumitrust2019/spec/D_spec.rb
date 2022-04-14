RSpec.describe 'test' do
  it 'test with "4\n0224\n"' do
    io = IO.popen("ruby sumitrust2019/D.rb", "w+")
    io.puts("4\n0224\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "6\n123123\n"' do
    io = IO.popen("ruby sumitrust2019/D.rb", "w+")
    io.puts("6\n123123\n")
    io.close_write
    expect(io.readlines.join).to eq("17\n")
  end

  it 'test with "19\n3141592653589793238\n"' do
    io = IO.popen("ruby sumitrust2019/D.rb", "w+")
    io.puts("19\n3141592653589793238\n")
    io.close_write
    expect(io.readlines.join).to eq("329\n")
  end

end
