RSpec.describe 'test' do
  it 'test with "4 2\n"' do
    io = IO.popen("ruby abc217/G.rb", "w+")
    io.puts("4 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n2\n4\n1\n")
  end

  it 'test with "6 6\n"' do
    io = IO.popen("ruby abc217/G.rb", "w+")
    io.puts("6 6\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n31\n90\n65\n15\n1\n")
  end

  it 'test with "20 5\n"' do
    io = IO.popen("ruby abc217/G.rb", "w+")
    io.puts("20 5\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n0\n0\n331776\n207028224\n204931064\n814022582\n544352515\n755619435\n401403040\n323173195\n538468102\n309259764\n722947327\n162115584\n10228144\n423360\n10960\n160\n1\n")
  end

end
