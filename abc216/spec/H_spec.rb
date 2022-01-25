RSpec.describe 'test' do
  it 'test with "2 2\n1 2\n"' do
    io = IO.popen("ruby abc216/H.rb", "w+")
    io.puts("2 2\n1 2\n")
    io.close_write
    expect(io.readlines.join).to eq("374341633\n")
  end

  it 'test with "2 2\n10 100\n"' do
    io = IO.popen("ruby abc216/H.rb", "w+")
    io.puts("2 2\n10 100\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "10 832\n73 160 221 340 447 574 720 742 782 970\n"' do
    io = IO.popen("ruby abc216/H.rb", "w+")
    io.puts("10 832\n73 160 221 340 447 574 720 742 782 970\n")
    io.close_write
    expect(io.readlines.join).to eq("553220346\n")
  end

end
