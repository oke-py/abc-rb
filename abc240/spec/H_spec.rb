RSpec.describe 'test' do
  it 'test with "7\n0101010\n"' do
    io = IO.popen("ruby abc240/H.rb", "w+")
    io.puts("7\n0101010\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "30\n000011001110101001011110001001\n"' do
    io = IO.popen("ruby abc240/H.rb", "w+")
    io.puts("30\n000011001110101001011110001001\n")
    io.close_write
    expect(io.readlines.join).to eq("9\n")
  end

end
