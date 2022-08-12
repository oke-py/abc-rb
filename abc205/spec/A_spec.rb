RSpec.describe 'test' do
  it 'test with "45 200\n"' do
    io = IO.popen("ruby abc205/A.rb", "w+")
    io.puts("45 200\n")
    io.close_write
    expect(io.readlines.join).to eq("90\n")
  end

  it 'test with "37 450\n"' do
    io = IO.popen("ruby abc205/A.rb", "w+")
    io.puts("37 450\n")
    io.close_write
    expect(io.readlines.join).to eq("166.5\n")
  end

  it 'test with "0 1000\n"' do
    io = IO.popen("ruby abc205/A.rb", "w+")
    io.puts("0 1000\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "50 0\n"' do
    io = IO.popen("ruby abc205/A.rb", "w+")
    io.puts("50 0\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
