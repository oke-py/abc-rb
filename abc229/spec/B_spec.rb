RSpec.describe 'test' do
  it 'test with "229 390\n"' do
    io = IO.popen("ruby abc229/B.rb", "w+")
    io.puts("229 390\n")
    io.close_write
    expect(io.readlines.join).to eq("Hard\n")
  end

  it 'test with "123456789 9876543210\n"' do
    io = IO.popen("ruby abc229/B.rb", "w+")
    io.puts("123456789 9876543210\n")
    io.close_write
    expect(io.readlines.join).to eq("Easy\n")
  end

end
