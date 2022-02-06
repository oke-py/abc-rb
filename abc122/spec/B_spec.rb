RSpec.describe 'test' do
  it 'test with "ATCODER\n"' do
    io = IO.popen("ruby abc122/B.rb", "w+")
    io.puts("ATCODER\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "HATAGAYA\n"' do
    io = IO.popen("ruby abc122/B.rb", "w+")
    io.puts("HATAGAYA\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "SHINJUKU\n"' do
    io = IO.popen("ruby abc122/B.rb", "w+")
    io.puts("SHINJUKU\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
