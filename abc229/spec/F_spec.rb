RSpec.describe 'test' do
  it 'test with "5\n31 4 159 2 65\n5 5 5 5 10\n"' do
    io = IO.popen("ruby abc229/F.rb", "w+")
    io.puts("5\n31 4 159 2 65\n5 5 5 5 10\n")
    io.close_write
    expect(io.readlines.join).to eq("16\n")
  end

  it 'test with "4\n100 100 100 1000000000\n1 2 3 4\n"' do
    io = IO.popen("ruby abc229/F.rb", "w+")
    io.puts("4\n100 100 100 1000000000\n1 2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("10\n")
  end

end
