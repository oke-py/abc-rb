RSpec.describe 'test' do
  it 'test with "5\n"' do
    io = IO.popen("ruby abc238/A.rb", "w+")
    io.puts("5\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "2\n"' do
    io = IO.popen("ruby abc238/A.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "623947744\n"' do
    io = IO.popen("ruby abc238/A.rb", "w+")
    io.puts("623947744\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
