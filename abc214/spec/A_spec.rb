RSpec.describe 'test' do
  it 'test with "214\n"' do
    io = IO.popen("ruby abc214/A.rb", "w+")
    io.puts("214\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "1\n"' do
    io = IO.popen("ruby abc214/A.rb", "w+")
    io.puts("1\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "126\n"' do
    io = IO.popen("ruby abc214/A.rb", "w+")
    io.puts("126\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

end
