RSpec.describe 'test' do
  it 'test with "2 1\n1 1\n0 1\n1 0\n"' do
    io = IO.popen("ruby abc274/E.rb", "w+")
    io.puts("2 1\n1 1\n0 1\n1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("2.5000000000\n")
  end

  it 'test with "2 1\n1 1\n0 1\n100 0\n"' do
    io = IO.popen("ruby abc274/E.rb", "w+")
    io.puts("2 1\n1 1\n0 1\n100 0\n")
    io.close_write
    expect(io.readlines.join).to eq("3.4142135624\n")
  end

  it 'test with "1 2\n4 4\n1 0\n0 1\n"' do
    io = IO.popen("ruby abc274/E.rb", "w+")
    io.puts("1 2\n4 4\n1 0\n0 1\n")
    io.close_write
    expect(io.readlines.join).to eq("4.3713203436\n")
  end

end
