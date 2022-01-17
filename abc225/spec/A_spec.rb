RSpec.describe 'test' do
  it 'test with "aba\n"' do
    io = IO.popen("ruby abc225/A.rb", "w+")
    io.puts("aba\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "ccc\n"' do
    io = IO.popen("ruby abc225/A.rb", "w+")
    io.puts("ccc\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "xyz\n"' do
    io = IO.popen("ruby abc225/A.rb", "w+")
    io.puts("xyz\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

end
