RSpec.describe 'test' do
  it 'test with "3\n3 3\n2 4\n6 2\n"' do
    io = IO.popen("ruby abc263/G.rb", "w+")
    io.puts("3\n3 3\n2 4\n6 2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "1\n1 4\n"' do
    io = IO.popen("ruby abc263/G.rb", "w+")
    io.puts("1\n1 4\n")
    io.close_write
    expect(io.readlines.join).to eq("2\n")
  end

end
