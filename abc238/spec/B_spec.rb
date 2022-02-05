RSpec.describe 'test' do
  it 'test with "4\n90 180 45 195\n"' do
    io = IO.popen("ruby abc238/B.rb", "w+")
    io.puts("4\n90 180 45 195\n")
    io.close_write
    expect(io.readlines.join).to eq("120\n")
  end

  it 'test with "1\n1\n"' do
    io = IO.popen("ruby abc238/B.rb", "w+")
    io.puts("1\n1\n")
    io.close_write
    expect(io.readlines.join).to eq("359\n")
  end

  it 'test with "10\n215 137 320 339 341 41 44 18 241 149\n"' do
    io = IO.popen("ruby abc238/B.rb", "w+")
    io.puts("10\n215 137 320 339 341 41 44 18 241 149\n")
    io.close_write
    expect(io.readlines.join).to eq("170\n")
  end

end
