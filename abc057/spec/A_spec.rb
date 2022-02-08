RSpec.describe 'test' do
  it 'test with "9 12\n"' do
    io = IO.popen("ruby abc057/A.rb", "w+")
    io.puts("9 12\n")
    io.close_write
    expect(io.readlines.join).to eq("21\n")
  end

  it 'test with "19 0\n"' do
    io = IO.popen("ruby abc057/A.rb", "w+")
    io.puts("19 0\n")
    io.close_write
    expect(io.readlines.join).to eq("19\n")
  end

  it 'test with "23 2\n"' do
    io = IO.popen("ruby abc057/A.rb", "w+")
    io.puts("23 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
