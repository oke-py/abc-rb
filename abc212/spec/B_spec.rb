RSpec.describe 'test' do
  it 'test with "7777\n"' do
    io = IO.popen("ruby abc212/B.rb", "w+")
    io.puts("7777\n")
    io.close_write
    expect(io.readlines.join).to eq("Weak\n")
  end

  it 'test with "0112\n"' do
    io = IO.popen("ruby abc212/B.rb", "w+")
    io.puts("0112\n")
    io.close_write
    expect(io.readlines.join).to eq("Strong\n")
  end

  it 'test with "9012\n"' do
    io = IO.popen("ruby abc212/B.rb", "w+")
    io.puts("9012\n")
    io.close_write
    expect(io.readlines.join).to eq("Weak\n")
  end

end
