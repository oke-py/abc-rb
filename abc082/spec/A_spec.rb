RSpec.describe 'test' do
  it 'test with "1 3\n"' do
    io = IO.popen("ruby abc082/A.rb", "w+")
    io.puts("1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "7 4\n"' do
    io = IO.popen("ruby abc082/A.rb", "w+")
    io.puts("7 4\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "5 5\n"' do
    io = IO.popen("ruby abc082/A.rb", "w+")
    io.puts("5 5\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

end
