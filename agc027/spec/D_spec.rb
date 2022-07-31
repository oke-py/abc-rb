RSpec.describe 'test' do
  it 'test with "2\n"' do
    io = IO.popen("ruby agc027/D.rb", "w+")
    io.puts("2\n")
    io.close_write
    expect(io.readlines.join).to eq("4 7\n23 10\n")
  end

end
