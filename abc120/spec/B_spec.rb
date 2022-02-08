RSpec.describe 'test' do
  it 'test with "8 12 2\n"' do
    io = IO.popen("ruby abc120/B.rb", "w+")
    io.puts("8 12 2\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "100 50 4\n"' do
    io = IO.popen("ruby abc120/B.rb", "w+")
    io.puts("100 50 4\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "1 1 1\n"' do
    io = IO.popen("ruby abc120/B.rb", "w+")
    io.puts("1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
