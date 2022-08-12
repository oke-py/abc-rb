RSpec.describe 'test' do
  it 'test with "3 2 4\n"' do
    io = IO.popen("ruby abc205/C.rb", "w+")
    io.puts("3 2 4\n")
    io.close_write
    expect(io.readlines.join).to eq(">\n")
  end

  it 'test with "-7 7 2\n"' do
    io = IO.popen("ruby abc205/C.rb", "w+")
    io.puts("-7 7 2\n")
    io.close_write
    expect(io.readlines.join).to eq("=\n")
  end

  it 'test with "-8 6 3\n"' do
    io = IO.popen("ruby abc205/C.rb", "w+")
    io.puts("-8 6 3\n")
    io.close_write
    expect(io.readlines.join).to eq("<\n")
  end

end
