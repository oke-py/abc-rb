RSpec.describe 'test' do
  it 'test with "3.456\n"' do
    io = IO.popen("ruby abc226/A.rb", "w+")
    io.puts("3.456\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "99.500\n"' do
    io = IO.popen("ruby abc226/A.rb", "w+")
    io.puts("99.500\n")
    io.close_write
    expect(io.readlines.join).to eq("100\n")
  end

  it 'test with "0.000\n"' do
    io = IO.popen("ruby abc226/A.rb", "w+")
    io.puts("0.000\n")
    io.close_write
    expect(io.readlines.join).to eq("0\n")
  end

end
