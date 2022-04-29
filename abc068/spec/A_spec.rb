RSpec.describe 'test' do
  it 'test with "100\n"' do
    io = IO.popen("ruby abc068/A.rb", "w+")
    io.puts("100\n")
    io.close_write
    expect(io.readlines.join).to eq("ABC100\n")
  end

  it 'test with "425\n"' do
    io = IO.popen("ruby abc068/A.rb", "w+")
    io.puts("425\n")
    io.close_write
    expect(io.readlines.join).to eq("ABC425\n")
  end

  it 'test with "999\n"' do
    io = IO.popen("ruby abc068/A.rb", "w+")
    io.puts("999\n")
    io.close_write
    expect(io.readlines.join).to eq("ABC999\n")
  end

end
