RSpec.describe 'test' do
  it 'test with "ababb\n"' do
    io = IO.popen("ruby abc237/H.rb", "w+")
    io.puts("ababb\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "xyz\n"' do
    io = IO.popen("ruby abc237/H.rb", "w+")
    io.puts("xyz\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "xxxxxxxxxx\n"' do
    io = IO.popen("ruby abc237/H.rb", "w+")
    io.puts("xxxxxxxxxx\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
