RSpec.describe 'test' do
  it 'test with "1 1 1\n1 1 1\n1 2 1\n"' do
    io = IO.popen("ruby abc227/H.rb", "w+")
    io.puts("1 1 1\n1 1 1\n1 2 1\n")
    io.close_write
    expect(io.readlines.join).to eq("DDRUDRUULL\n")
  end

  it 'test with "2 4 2\n2 1 1\n1 1 2\n"' do
    io = IO.popen("ruby abc227/H.rb", "w+")
    io.puts("2 4 2\n2 1 1\n1 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("NO\n")
  end

  it 'test with "2 2 3\n2 1 2\n1 3 2\n"' do
    io = IO.popen("ruby abc227/H.rb", "w+")
    io.puts("2 2 3\n2 1 2\n1 3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("DUDDRUDRLRUULRDULL\n")
  end

end
