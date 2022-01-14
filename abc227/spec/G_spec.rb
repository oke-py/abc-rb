RSpec.describe 'test' do
  it 'test with "5 2\n"' do
    io = IO.popen("ruby abc227/G.rb", "w+")
    io.puts("5 2\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "103 3\n"' do
    io = IO.popen("ruby abc227/G.rb", "w+")
    io.puts("103 3\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "1000000000000 1000000\n"' do
    io = IO.popen("ruby abc227/G.rb", "w+")
    io.puts("1000000000000 1000000\n")
    io.close_write
    expect(io.readlines.join).to eq("110520107\n")
  end

end
