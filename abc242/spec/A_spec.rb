RSpec.describe 'test' do
  it 'test with "30 500 20 103\n"' do
    io = IO.popen("ruby abc242/A.rb", "w+")
    io.puts("30 500 20 103\n")
    io.close_write
    expect(io.readlines.join).to eq("0.042553191489\n")
  end

  it 'test with "50 500 100 1\n"' do
    io = IO.popen("ruby abc242/A.rb", "w+")
    io.puts("50 500 100 1\n")
    io.close_write
    expect(io.readlines.join).to eq("1.000000000000\n")
  end

  it 'test with "1 2 1 1000\n"' do
    io = IO.popen("ruby abc242/A.rb", "w+")
    io.puts("1 2 1 1000\n")
    io.close_write
    expect(io.readlines.join).to eq("0.000000000000\n")
  end

end
