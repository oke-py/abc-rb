RSpec.describe 'test' do
  it 'test with "Hello,World!\n"' do
    io = IO.popen("ruby abc215/A.rb", "w+")
    io.puts("Hello,World!\n")
    io.close_write
    expect(io.readlines.join).to eq("AC\n")
  end

  it 'test with "Hello,world!\n"' do
    io = IO.popen("ruby abc215/A.rb", "w+")
    io.puts("Hello,world!\n")
    io.close_write
    expect(io.readlines.join).to eq("WA\n")
  end

  it 'test with "Hello!World!\n"' do
    io = IO.popen("ruby abc215/A.rb", "w+")
    io.puts("Hello!World!\n")
    io.close_write
    expect(io.readlines.join).to eq("WA\n")
  end

end
