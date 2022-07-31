RSpec.describe 'test' do
  it 'test with "2 100\n1 10\n"' do
    io = IO.popen("ruby agc027/B.rb", "w+")
    io.puts("2 100\n1 10\n")
    io.close_write
    expect(io.readlines.join).to eq("355\n")
  end

  it 'test with "5 1\n1 999999997 999999998 999999999 1000000000\n"' do
    io = IO.popen("ruby agc027/B.rb", "w+")
    io.puts("5 1\n1 999999997 999999998 999999999 1000000000\n")
    io.close_write
    expect(io.readlines.join).to eq("19999999983\n")
  end

  it 'test with "10 8851025\n38 87 668 3175 22601 65499 90236 790604 4290609 4894746\n"' do
    io = IO.popen("ruby agc027/B.rb", "w+")
    io.puts("10 8851025\n38 87 668 3175 22601 65499 90236 790604 4290609 4894746\n")
    io.close_write
    expect(io.readlines.join).to eq("150710136\n")
  end

  it 'test with "16 10\n1 7 12 27 52 75 731 13856 395504 534840 1276551 2356789 9384806 19108104 82684732 535447408\n"' do
    io = IO.popen("ruby agc027/B.rb", "w+")
    io.puts("16 10\n1 7 12 27 52 75 731 13856 395504 534840 1276551 2356789 9384806 19108104 82684732 535447408\n")
    io.close_write
    expect(io.readlines.join).to eq("3256017715\n")
  end

end
