RSpec.describe 'test' do
  it 'test with "6 4 3\n"' do
    io = IO.popen("ruby abc136/A.rb", "w+")
    io.puts("6 4 3\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "8 3 9\n"' do
    io = IO.popen("ruby abc136/A.rb", "w+")
    io.puts("8 3 9\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "12 3 7\n"' do
    io = IO.popen("ruby abc136/A.rb", "w+")
    io.puts("12 3 7\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
