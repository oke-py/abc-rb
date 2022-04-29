RSpec.describe 'test' do
  it 'test with "QWERTYASDFZXCV\n"' do
    io = IO.popen("ruby abc053/B.rb", "w+")
    io.puts("QWERTYASDFZXCV\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "ZABCZ\n"' do
    io = IO.popen("ruby abc053/B.rb", "w+")
    io.puts("ZABCZ\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "HASFJGHOGAKZZFEGA\n"' do
    io = IO.popen("ruby abc053/B.rb", "w+")
    io.puts("HASFJGHOGAKZZFEGA\n")
    io.close_write
    expect(io.readlines.join).to eq("12\n")
  end

end
