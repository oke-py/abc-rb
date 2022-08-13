RSpec.describe 'test' do
  it 'test with "3 5\n"' do
    io = IO.popen("ruby abc264/B.rb", "w+")
    io.puts("3 5\n")
    io.close_write
    expect(io.readlines.join).to eq("black\n")
  end

  it 'test with "4 5\n"' do
    io = IO.popen("ruby abc264/B.rb", "w+")
    io.puts("4 5\n")
    io.close_write
    expect(io.readlines.join).to eq("white\n")
  end

end
