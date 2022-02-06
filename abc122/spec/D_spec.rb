RSpec.describe 'test' do
  it 'test with "3\n"' do
    io = IO.popen("ruby abc122/D.rb", "w+")
    io.puts("3\n")
    io.close_write
    expect(io.readlines.join).to eq("61\n")
  end

  it 'test with "4\n"' do
    io = IO.popen("ruby abc122/D.rb", "w+")
    io.puts("4\n")
    io.close_write
    expect(io.readlines.join).to eq("230\n")
  end

  it 'test with "100\n"' do
    io = IO.popen("ruby abc122/D.rb", "w+")
    io.puts("100\n")
    io.close_write
    expect(io.readlines.join).to eq("388130742\n")
  end

end
