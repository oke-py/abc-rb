RSpec.describe 'test' do
  it 'test with "123\n"' do
    io = IO.popen("ruby abc235/A.rb", "w+")
    io.puts("123\n")
    io.close_write
    expect(io.readlines.join).to eq("666\n")
  end

  it 'test with "999\n"' do
    io = IO.popen("ruby abc235/A.rb", "w+")
    io.puts("999\n")
    io.close_write
    expect(io.readlines.join).to eq("2997\n")
  end

end
