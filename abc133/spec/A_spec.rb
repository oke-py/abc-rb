RSpec.describe 'test' do
  it 'test with "4 2 9\n"' do
    io = IO.popen("ruby abc133/A.rb", "w+")
    io.puts("4 2 9\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

  it 'test with "4 2 7\n"' do
    io = IO.popen("ruby abc133/A.rb", "w+")
    io.puts("4 2 7\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

  it 'test with "4 2 8\n"' do
    io = IO.popen("ruby abc133/A.rb", "w+")
    io.puts("4 2 8\n")
    io.close_write
    expect(io.readlines.join).to eq("8\n")
  end

end
