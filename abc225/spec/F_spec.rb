RSpec.describe 'test' do
  it 'test with "4 3\node\nzaaa\nr\natc\n"' do
    io = IO.popen("ruby abc225/F.rb", "w+")
    io.puts("4 3\node\nzaaa\nr\natc\n")
    io.close_write
    expect(io.readlines.join).to eq("atcoder\n")
  end

  it 'test with "5 2\nz\nz\nzzz\nz\nzzzzzz\n"' do
    io = IO.popen("ruby abc225/F.rb", "w+")
    io.puts("5 2\nz\nz\nzzz\nz\nzzzzzz\n")
    io.close_write
    expect(io.readlines.join).to eq("zz\n")
  end

end
