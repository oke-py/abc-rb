RSpec.describe 'test' do
  it 'test with "YY...Y.Y.Y.\n2\n"' do
    io = IO.popen("ruby abc229/G.rb", "w+")
    io.puts("YY...Y.Y.Y.\n2\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "YYYY....YYY\n3\n"' do
    io = IO.popen("ruby abc229/G.rb", "w+")
    io.puts("YYYY....YYY\n3\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

end
