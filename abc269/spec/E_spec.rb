RSpec.describe 'test' do
  it 'test with "N\n"' do
    io = IO.popen("ruby abc269/E.rb", "w+")
    io.puts("N\n")
    io.close_write
    expect(io.readlines.join).to eq("? A B C D\n")
  end

  it 'test with "T\n"' do
    io = IO.popen("ruby abc269/E.rb", "w+")
    io.puts("T\n")
    io.close_write
    expect(io.readlines.join).to eq("! X Y\n")
  end

end
