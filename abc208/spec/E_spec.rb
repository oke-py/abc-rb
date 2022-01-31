RSpec.describe 'test' do
  it 'test with "13 2\n"' do
    io = IO.popen("ruby abc208/E.rb", "w+")
    io.puts("13 2\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "100 80\n"' do
    io = IO.popen("ruby abc208/E.rb", "w+")
    io.puts("100 80\n")
    io.close_write
    expect(io.readlines.join).to eq("99\n")
  end

  it 'test with "1000000000000000000 1000000000\n"' do
    io = IO.popen("ruby abc208/E.rb", "w+")
    io.puts("1000000000000000000 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("841103275147365677\n")
  end

end
