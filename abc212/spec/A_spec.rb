RSpec.describe 'test' do
  it 'test with "50 50\n"' do
    io = IO.popen("ruby abc212/A.rb", "w+")
    io.puts("50 50\n")
    io.close_write
    expect(io.readlines.join).to eq("Alloy\n")
  end

  it 'test with "100 0\n"' do
    io = IO.popen("ruby abc212/A.rb", "w+")
    io.puts("100 0\n")
    io.close_write
    expect(io.readlines.join).to eq("Gold\n")
  end

  it 'test with "0 100\n"' do
    io = IO.popen("ruby abc212/A.rb", "w+")
    io.puts("0 100\n")
    io.close_write
    expect(io.readlines.join).to eq("Silver\n")
  end

  it 'test with "100 2\n"' do
    io = IO.popen("ruby abc212/A.rb", "w+")
    io.puts("100 2\n")
    io.close_write
    expect(io.readlines.join).to eq("Alloy\n")
  end

end
