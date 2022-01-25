RSpec.describe 'test' do
  it 'test with "5\n"' do
    io = IO.popen("ruby abc216/C.rb", "w+")
    io.puts("5\n")
    io.close_write
    expect(io.readlines.join).to eq("AABA\n")
  end

  it 'test with "14\n"' do
    io = IO.popen("ruby abc216/C.rb", "w+")
    io.puts("14\n")
    io.close_write
    expect(io.readlines.join).to eq("BBABBAAAB\n")
  end

end
