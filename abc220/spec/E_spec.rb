RSpec.describe 'test' do
  it 'test with "3 2\n"' do
    io = IO.popen("ruby abc220/E.rb", "w+")
    io.puts("3 2\n")
    io.close_write
    expect(io.readlines.join).to eq("14\n")
  end

  it 'test with "14142 17320\n"' do
    io = IO.popen("ruby abc220/E.rb", "w+")
    io.puts("14142 17320\n")
    io.close_write
    expect(io.readlines.join).to eq("11284501\n")
  end

end
