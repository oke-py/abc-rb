RSpec.describe 'test' do
  it 'test with "7 20 12\n"' do
    io = IO.popen("ruby abc228/A.rb", "w+")
    io.puts("7 20 12\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

  it 'test with "20 7 12\n"' do
    io = IO.popen("ruby abc228/A.rb", "w+")
    io.puts("20 7 12\n")
    io.close_write
    expect(io.readlines.join).to eq("No\n")
  end

  it 'test with "23 0 23\n"' do
    io = IO.popen("ruby abc228/A.rb", "w+")
    io.puts("23 0 23\n")
    io.close_write
    expect(io.readlines.join).to eq("Yes\n")
  end

end
