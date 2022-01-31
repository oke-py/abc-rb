RSpec.describe 'test' do
  it 'test with "2 11\n"' do
    io = IO.popen("ruby abc208/A.rb", "w+")
    io.puts("2 11\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "2 13\n"' do
    io = IO.popen("ruby abc208/A.rb", "w+")
    io.puts("2 13\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "100 600\n"' do
    io = IO.popen("ruby abc208/A.rb", "w+")
    io.puts("100 600\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
