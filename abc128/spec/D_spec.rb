RSpec.describe 'test' do
  it 'test with "6 4\n-10 8 2 1 2 6\n"' do
    io = IO.popen("ruby abc128/D.rb", "w+")
    io.puts("6 4\n-10 8 2 1 2 6\n")
    io.close_write
    expect(io.readlines.join).to eq("14\n")
  end

  it 'test with "6 4\n-6 -100 50 -2 -5 -3\n"' do
    io = IO.popen("ruby abc128/D.rb", "w+")
    io.puts("6 4\n-6 -100 50 -2 -5 -3\n")
    io.close_write
    expect(io.readlines.join).to eq("44\n")
  end

  it 'test with "6 3\n-6 -100 50 -2 -5 -3\n"' do
    io = IO.popen("ruby abc128/D.rb", "w+")
    io.puts("6 3\n-6 -100 50 -2 -5 -3\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
