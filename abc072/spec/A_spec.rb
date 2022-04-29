RSpec.describe 'test' do
  it 'test with "100 17\n"' do
    io = IO.popen("ruby abc072/A.rb", "w+")
    io.puts("100 17\n")
    io.close_write
    expect(io.readlines.join).to eq("83\n")
  end

  it 'test with "48 58\n"' do
    io = IO.popen("ruby abc072/A.rb", "w+")
    io.puts("48 58\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

  it 'test with "1000000000 1000000000\n"' do
    io = IO.popen("ruby abc072/A.rb", "w+")
    io.puts("1000000000 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
