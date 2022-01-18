RSpec.describe 'test' do
  it 'test with "2 3\nGCP\nPPP\nCCC\nPPC\n"' do
    io = IO.popen("ruby abc222/C.rb", "w+")
    io.puts("2 3\nGCP\nPPP\nCCC\nPPC\n")
    io.close_write
    expect(io.readlines.join).to eq("3\n1\n2\n4\n")
  end

  it 'test with "2 2\nGC\nPG\nCG\nPP\n"' do
    io = IO.popen("ruby abc222/C.rb", "w+")
    io.puts("2 2\nGC\nPG\nCG\nPP\n")
    io.close_write
    expect(io.readlines.join).to eq("1\n2\n3\n4\n")
  end

end
