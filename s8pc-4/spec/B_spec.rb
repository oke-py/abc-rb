RSpec.describe 'test' do
  it 'test with "5 5\n3949 3774 3598 3469 3424\n"' do
    io = IO.popen("ruby s8pc-4/B.rb", "w+")
    io.puts("5 5\n3949 3774 3598 3469 3424\n")
    io.close_write
    expect(io.readlines.join).to eq("1541\n")
  end

  it 'test with "5 3\n7 4 2 6 4\n"' do
    io = IO.popen("ruby s8pc-4/B.rb", "w+")
    io.puts("5 3\n7 4 2 6 4\n")
    io.close_write
    expect(io.readlines.join).to eq("7\n")
  end

end
