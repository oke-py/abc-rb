RSpec.describe 'test' do
  it 'test with "ARC\nAGC\nAHC\n"' do
    io = IO.popen("ruby abc217/B.rb", "w+")
    io.puts("ARC\nAGC\nAHC\n")
    io.close_write
    expect(io.readlines.join).to eq("ABC\n")
  end

  it 'test with "AGC\nABC\nARC\n"' do
    io = IO.popen("ruby abc217/B.rb", "w+")
    io.puts("AGC\nABC\nARC\n")
    io.close_write
    expect(io.readlines.join).to eq("AHC\n")
  end

end
