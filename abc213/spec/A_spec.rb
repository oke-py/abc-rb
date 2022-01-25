RSpec.describe 'test' do
  it 'test with "3 6\n"' do
    io = IO.popen("ruby abc213/A.rb", "w+")
    io.puts("3 6\n")
    io.close_write
    expect(io.readlines.join).to eq("5\n")
  end

  it 'test with "10 12\n"' do
    io = IO.popen("ruby abc213/A.rb", "w+")
    io.puts("10 12\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

end
