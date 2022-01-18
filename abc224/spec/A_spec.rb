RSpec.describe 'test' do
  it 'test with "atcoder\n"' do
    io = IO.popen("ruby abc224/A.rb", "w+")
    io.puts("atcoder\n")
    io.close_write
    expect(io.readlines.join).to eq("er\n")
  end

  it 'test with "tourist\n"' do
    io = IO.popen("ruby abc224/A.rb", "w+")
    io.puts("tourist\n")
    io.close_write
    expect(io.readlines.join).to eq("ist\n")
  end

  it 'test with "er\n"' do
    io = IO.popen("ruby abc224/A.rb", "w+")
    io.puts("er\n")
    io.close_write
    expect(io.readlines.join).to eq("er\n")
  end

end
