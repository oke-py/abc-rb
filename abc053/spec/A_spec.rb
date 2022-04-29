RSpec.describe 'test' do
  it 'test with "1000\n"' do
    io = IO.popen("ruby abc053/A.rb", "w+")
    io.puts("1000\n")
    io.close_write
    expect(io.readlines.join).to eq("ABC\n")
  end

  it 'test with "2000\n"' do
    io = IO.popen("ruby abc053/A.rb", "w+")
    io.puts("2000\n")
    io.close_write
    expect(io.readlines.join).to eq("ARC\n")
  end

end
