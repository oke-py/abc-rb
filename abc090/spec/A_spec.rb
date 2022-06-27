RSpec.describe 'test' do
  it 'test with "ant\nobe\nrec\n"' do
    io = IO.popen("ruby abc090/A.rb", "w+")
    io.puts("ant\nobe\nrec\n")
    io.close_write
    expect(io.readlines.join).to eq("abc\n")
  end

  it 'test with "edu\ncat\nion\n"' do
    io = IO.popen("ruby abc090/A.rb", "w+")
    io.puts("edu\ncat\nion\n")
    io.close_write
    expect(io.readlines.join).to eq("ean\n")
  end

end
