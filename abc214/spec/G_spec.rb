RSpec.describe 'test' do
  it 'test with "4\n1 2 3 4\n2 1 4 3\n"' do
    io = IO.popen("ruby abc214/G.rb", "w+")
    io.puts("4\n1 2 3 4\n2 1 4 3\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "3\n1 2 3\n2 1 3\n"' do
    io = IO.popen("ruby abc214/G.rb", "w+")
    io.puts("3\n1 2 3\n2 1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "20\n2 3 15 19 10 7 5 6 14 13 20 4 18 9 17 8 12 11 16 1\n8 12 4 13 19 3 10 16 11 9 1 2 17 6 5 18 7 14 20 15\n"' do
    io = IO.popen("ruby abc214/G.rb", "w+")
    io.puts("20\n2 3 15 19 10 7 5 6 14 13 20 4 18 9 17 8 12 11 16 1\n8 12 4 13 19 3 10 16 11 9 1 2 17 6 5 18 7 14 20 15\n")
    io.close_write
    expect(io.readlines.join).to eq("803776944\n")
  end

end
