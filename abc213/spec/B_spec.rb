RSpec.describe 'test' do
  it 'test with "6\n1 123 12345 12 1234 123456\n"' do
    io = IO.popen("ruby abc213/B.rb", "w+")
    io.puts("6\n1 123 12345 12 1234 123456\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n")
  end

  it 'test with "5\n3 1 4 15 9\n"' do
    io = IO.popen("ruby abc213/B.rb", "w+")
    io.puts("5\n3 1 4 15 9\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

end
