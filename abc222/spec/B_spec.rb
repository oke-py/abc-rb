RSpec.describe 'test' do
  it 'test with "4 50\n80 60 40 0\n"' do
    io = IO.popen("ruby abc222/B.rb", "w+")
    io.puts("4 50\n80 60 40 0\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

  it 'test with "3 90\n89 89 89\n"' do
    io = IO.popen("ruby abc222/B.rb", "w+")
    io.puts("3 90\n89 89 89\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "2 22\n6 37\n"' do
    io = IO.popen("ruby abc222/B.rb", "w+")
    io.puts("2 22\n6 37\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
