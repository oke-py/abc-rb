RSpec.describe 'test' do
  it 'test with "4\n1 4 6 3\n"' do
    io = IO.popen("ruby abc102/B.rb", "w+")
    io.puts("4\n1 4 6 3\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "2\n1000000000 1\n"' do
    io = IO.popen("ruby abc102/B.rb", "w+")
    io.puts("2\n1000000000 1\n")
    io.close_write
    expect(io.readlines.join).to eq("999999999\n")
  end

  it 'test with "5\n1 1 1 1 1\n"' do
    io = IO.popen("ruby abc102/B.rb", "w+")
    io.puts("5\n1 1 1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
