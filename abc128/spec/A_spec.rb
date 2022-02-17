RSpec.describe 'test' do
  it 'test with "1 3\n"' do
    io = IO.popen("ruby abc128/A.rb", "w+")
    io.puts("1 3\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "0 1\n"' do
    io = IO.popen("ruby abc128/A.rb", "w+")
    io.puts("0 1\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "32 21\n"' do
    io = IO.popen("ruby abc128/A.rb", "w+")
    io.puts("32 21\n")
    io.close_write
    expect(io.readlines.join).to eq("58\n")
  end

end
