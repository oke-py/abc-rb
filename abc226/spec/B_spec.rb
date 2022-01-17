RSpec.describe 'test' do
  it 'test with "4\n2 1 2\n2 1 1\n2 2 1\n2 1 2\n"' do
    io = IO.popen("ruby abc226/B.rb", "w+")
    io.puts("4\n2 1 2\n2 1 1\n2 2 1\n2 1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "5\n1 1\n1 1\n1 2\n2 1 1\n3 1 1 1\n"' do
    io = IO.popen("ruby abc226/B.rb", "w+")
    io.puts("5\n1 1\n1 1\n1 2\n2 1 1\n3 1 1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "1\n1 1\n"' do
    io = IO.popen("ruby abc226/B.rb", "w+")
    io.puts("1\n1 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
