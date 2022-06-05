RSpec.describe 'test' do
  it 'test with "3 2\n4 1 5\n"' do
    io = IO.popen("ruby abc105/D.rb", "w+")
    io.puts("3 2\n4 1 5\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "13 17\n29 7 5 7 9 51 7 13 8 55 42 9 81\n"' do
    io = IO.popen("ruby abc105/D.rb", "w+")
    io.puts("13 17\n29 7 5 7 9 51 7 13 8 55 42 9 81\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "10 400000000\n1000000000 1000000000 1000000000 1000000000 1000000000 1000000000 1000000000 1000000000 1000000000 1000000000\n"' do
    io = IO.popen("ruby abc105/D.rb", "w+")
    io.puts("10 400000000\n1000000000 1000000000 1000000000 1000000000 1000000000 1000000000 1000000000 1000000000 1000000000 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("25\n")
  end

end
