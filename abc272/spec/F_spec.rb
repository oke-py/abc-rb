RSpec.describe 'test' do
  it 'test with "3\nadb\ncab\n"' do
    io = IO.popen("ruby abc272/F.rb", "w+")
    io.puts("3\nadb\ncab\n")
    io.close_write
    expect(io.readlines.join).to eq("4\n")
  end

  it 'test with "10\nwsiuhwijsl\npwqoketvun\n"' do
    io = IO.popen("ruby abc272/F.rb", "w+")
    io.puts("10\nwsiuhwijsl\npwqoketvun\n")
    io.close_write
    expect(io.readlines.join).to eq("56\n")
  end

end
