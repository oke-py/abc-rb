RSpec.describe 'test' do
  it 'test with "3 4\n"' do
    io = IO.popen("ruby abc069/A.rb", "w+")
    io.puts("3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "2 2\n"' do
    io = IO.popen("ruby abc069/A.rb", "w+")
    io.puts("2 2\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n")
  end

end
