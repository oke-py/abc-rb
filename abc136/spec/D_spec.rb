RSpec.describe 'test' do
  it 'test with "RRLRL\n"' do
    io = IO.popen("ruby abc136/D.rb", "w+")
    io.puts("RRLRL\n")
    io.close_write
    expect(io.readlines.join).to eq("0 1 2 1 1\n")
  end

  it 'test with "RRLLLLRLRRLL\n"' do
    io = IO.popen("ruby abc136/D.rb", "w+")
    io.puts("RRLLLLRLRRLL\n")
    io.close_write
    expect(io.readlines.join).to eq("0 3 3 0 0 0 1 1 0 2 2 0\n")
  end

  it 'test with "RRRLLRLLRRRLLLLL\n"' do
    io = IO.popen("ruby abc136/D.rb", "w+")
    io.puts("RRRLLRLLRRRLLLLL\n")
    io.close_write
    expect(io.readlines.join).to eq("0 0 3 2 0 2 1 0 0 0 4 4 0 0 0 0\n")
  end

end
