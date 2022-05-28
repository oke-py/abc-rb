RSpec.describe 'test' do
  it 'test with "10\n"' do
    io = IO.popen("ruby abc077/B.rb", "w+")
    io.puts("10\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

  it 'test with "81\n"' do
    io = IO.popen("ruby abc077/B.rb", "w+")
    io.puts("81\n")
    io.close_write
    expect(io.readlines.join).to eq("81\n")
  end

  it 'test with "271828182\n"' do
    io = IO.popen("ruby abc077/B.rb", "w+")
    io.puts("271828182\n")
    io.close_write
    expect(io.readlines.join).to eq("271821169\n")
  end

end
