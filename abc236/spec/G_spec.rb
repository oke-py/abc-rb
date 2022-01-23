RSpec.describe 'test' do
  it 'test with "4 5 3\n2 3\n3 4\n1 2\n3 2\n2 2\n"' do
    io = IO.popen("ruby abc236/G.rb", "w+")
    io.puts("4 5 3\n2 3\n3 4\n1 2\n3 2\n2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("-1 4 5 3\n")
  end

  it 'test with "2 1 1000000000\n1 2\n"' do
    io = IO.popen("ruby abc236/G.rb", "w+")
    io.puts("2 1 1000000000\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("-1 -1\n")
  end

end
