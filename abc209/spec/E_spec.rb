RSpec.describe 'test' do
  it 'test with "3\nabcd\nbcda\nada\n"' do
    io = IO.popen("ruby abc209/E.rb", "w+")
    io.puts("3\nabcd\nbcda\nada\n")
    io.close_write
    expect(io.readlines.join).to eq("Aoki\nTakahashi\nDraw\n")
  end

  it 'test with "1\nABC\n"' do
    io = IO.popen("ruby abc209/E.rb", "w+")
    io.puts("1\nABC\n")
    io.close_write
    expect(io.readlines.join).to eq("Draw\n")
  end

  it 'test with "5\neaaaabaa\neaaaacaa\ndaaaaaaa\neaaaadaa\ndaaaafaa\n"' do
    io = IO.popen("ruby abc209/E.rb", "w+")
    io.puts("5\neaaaabaa\neaaaacaa\ndaaaaaaa\neaaaadaa\ndaaaafaa\n")
    io.close_write
    expect(io.readlines.join).to eq("Takahashi\nTakahashi\nTakahashi\nAoki\nTakahashi\n")
  end

end
