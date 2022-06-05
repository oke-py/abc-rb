RSpec.describe 'test' do
  it 'test with "11\n"' do
    io = IO.popen("ruby abc105/B.rb", "w+")
    io.puts("11\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "40\n"' do
    io = IO.popen("ruby abc105/B.rb", "w+")
    io.puts("40\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "3\n"' do
    io = IO.popen("ruby abc105/B.rb", "w+")
    io.puts("3\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

end
