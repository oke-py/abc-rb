RSpec.describe 'test' do
  it 'test with "5\n0 2 5 1 0\n"' do
    io = IO.popen("ruby abc128/F.rb", "w+")
    io.puts("5\n0 2 5 1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "6\n0 10 -7 -4 -13 0\n"' do
    io = IO.popen("ruby abc128/F.rb", "w+")
    io.puts("6\n0 10 -7 -4 -13 0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "11\n0 -4 0 -99 31 14 -15 -39 43 18 0\n"' do
    io = IO.popen("ruby abc128/F.rb", "w+")
    io.puts("11\n0 -4 0 -99 31 14 -15 -39 43 18 0\n")
    io.close_write
    expect(io.readlines.join).to eq("59\n")
  end

end
