RSpec.describe 'test' do
  it 'test with "aba\n"' do
    io = IO.popen("ruby abc242/B.rb", "w+")
    io.puts("aba\n")
    io.close_write
    expect(io.readlines.join).to eq("aab\n")
  end

  it 'test with "zzzz\n"' do
    io = IO.popen("ruby abc242/B.rb", "w+")
    io.puts("zzzz\n")
    io.close_write
    expect(io.readlines.join).to eq("zzzz\n")
  end

end
