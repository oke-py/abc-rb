RSpec.describe 'test' do
  it 'test with "SAT\n"' do
    io = IO.popen("ruby abc146/A.rb", "w+")
    io.puts("SAT\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

  it 'test with "SUN\n"' do
    io = IO.popen("ruby abc146/A.rb", "w+")
    io.puts("SUN\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

end
