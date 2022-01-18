RSpec.describe 'test' do
  it 'test with "500\n"' do
    io = IO.popen("ruby abc223/A.rb", "w+")
    io.puts("500\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "40\n"' do
    io = IO.popen("ruby abc223/A.rb", "w+")
    io.puts("40\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "0\n"' do
    io = IO.popen("ruby abc223/A.rb", "w+")
    io.puts("0\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
