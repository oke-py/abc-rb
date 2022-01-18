RSpec.describe 'test' do
  it 'test with "2\n1011 10100\n"' do
    io = IO.popen("ruby abc220/B.rb", "w+")
    io.puts("2\n1011 10100\n")
    io.close_write
    expect(io.readlines.join).to eq("220\n")
  end

  it 'test with "7\n123 456\n"' do
    io = IO.popen("ruby abc220/B.rb", "w+")
    io.puts("7\n123 456\n")
    io.close_write
    expect(io.readlines.join).to eq("15642\n")
  end

end
