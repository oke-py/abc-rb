RSpec.describe 'test' do
  it 'test with "6 3\n1 4 3\n2 2 1\n4 6 2\n"' do
    io = IO.popen("ruby abc216/G.rb", "w+")
    io.puts("6 3\n1 4 3\n2 2 1\n4 6 2\n")
    io.close_write
    expect(io.readlines.join).to eq("0 1 1 1 0 1 \n")
  end

  it 'test with "8 2\n2 6 1\n3 5 3\n"' do
    io = IO.popen("ruby abc216/G.rb", "w+")
    io.puts("8 2\n2 6 1\n3 5 3\n")
    io.close_write
    expect(io.readlines.join).to eq("0 0 1 1 1 0 0 0 \n")
  end

end
