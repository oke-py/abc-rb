RSpec.describe 'test' do
  it 'test with "4 1 2 5\n"' do
    io = IO.popen("ruby agc025/B.rb", "w+")
    io.puts("4 1 2 5\n")
    io.close_write
    expect(io.readlines.join).to eq("40\n")
  end

  it 'test with "2 5 6 0\n"' do
    io = IO.popen("ruby agc025/B.rb", "w+")
    io.puts("2 5 6 0\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "90081 33447 90629 6391049189\n"' do
    io = IO.popen("ruby agc025/B.rb", "w+")
    io.puts("90081 33447 90629 6391049189\n")
    io.close_write
    expect(io.readlines.join).to eq("577742975\n")
  end

end
