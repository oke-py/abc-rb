RSpec.describe 'test' do
  it 'test with "3\n2 3 4\n"' do
    io = IO.popen("ruby abc272/C.rb", "w+")
    io.puts("3\n2 3 4\n")
    io.close_write
    expect(io.readlines.join).to eq("6\n")
  end

  it 'test with "2\n1 0\n"' do
    io = IO.popen("ruby abc272/C.rb", "w+")
    io.puts("2\n1 0\n")
    io.close_write
    expect(io.readlines.join).to eq("-1\n")
  end

end
