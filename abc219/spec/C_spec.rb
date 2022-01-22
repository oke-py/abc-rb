RSpec.describe 'test' do
  it 'test with "bacdefghijklmnopqrstuvwxzy\n4\nabx\nbzz\nbzy\ncaa\n"' do
    io = IO.popen("ruby abc219/C.rb", "w+")
    io.puts("bacdefghijklmnopqrstuvwxzy\n4\nabx\nbzz\nbzy\ncaa\n")
    io.close_write
    expect(io.readlines.join).to eq("bzz\nbzy\nabx\ncaa\n")
  end

  it 'test with "zyxwvutsrqponmlkjihgfedcba\n5\na\nab\nabc\nac\nb\n"' do
    io = IO.popen("ruby abc219/C.rb", "w+")
    io.puts("zyxwvutsrqponmlkjihgfedcba\n5\na\nab\nabc\nac\nb\n")
    io.close_write
    expect(io.readlines.join).to eq("b\na\nac\nab\nabc\n")
  end

end
