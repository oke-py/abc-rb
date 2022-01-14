RSpec.describe 'test' do
  it 'test with "XX...X.X.X.\n2\n"' do
    io = IO.popen("ruby abc229/D.rb", "w+")
    io.puts("XX...X.X.X.\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "XXXX\n200000\n"' do
    io = IO.popen("ruby abc229/D.rb", "w+")
    io.puts("XXXX\n200000\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
