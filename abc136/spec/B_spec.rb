RSpec.describe 'test' do
  it 'test with "11\n"' do
    io = IO.popen("ruby abc136/B.rb", "w+")
    io.puts("11\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

  it 'test with "136\n"' do
    io = IO.popen("ruby abc136/B.rb", "w+")
    io.puts("136\n")
    io.close_write
    expect(io.readlines.join).to eq("46\n")
  end

  it 'test with "100000\n"' do
    io = IO.popen("ruby abc136/B.rb", "w+")
    io.puts("100000\n")
    io.close_write
    expect(io.readlines.join).to eq("90909\n")
  end

end
